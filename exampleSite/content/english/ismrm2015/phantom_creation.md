
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "The phantom creation process"
# meta description
description: "This is meta description"
draft: false
---

### Data generation in 2015
 
   1. White matter bundles were manually segmentated from a HCP subject's tractogram based on definitions found in <a href="http://www.springer.com/medicine/neurology/book/978-3-642-20455-5" target="_blank">Diffusion Tensor Imaging, Introduction and Atlas</a>, which was written by challenge coorganizers Bram Stieltjes and Klaus Maier-Hein, as well as R.M. Brunner and F.B. Laun. To create these 25 bundles, an expert segmented meticulously streamlines of a global tracking on HCP data, the bundle masks were computed, and bundle-specific deterministic tracking was performed by seeding extensively inside each bundle mask. The final tractogram was then used in Fiberfox to simulate the fitting DWI that can be found in the <a href="/ismrm2015/dwi_data">DWI data page</a>. 

   2. The ISMRM 2015 Tractography challenge was based on an artificial phantom generated using the <a href="http://docs.mitk.org/2014.10/org_mitk_views_fiberfoxview.html" target="_blank">Fiberfox</a>, based on these 25 manually segmented bundles, which serve as ground truth models. They are used as **artificial fibers** to generate the raw diffusion MRI dataset, as described in the <a href="http://onlinelibrary.wiley.com/doi/10.1002/mrm.25045/abstract" target="_blank">Fiberfox paper</a> by Neher et al. Hence, this is just another way to generate a phantom dataset based on realistic looking streamline fibers. The aim was to create a realistic, clinical-style dataset that provided challenging bundles configurations.

<img src="/images/ismrm2015/data_creation_process.png" height="550px" style="display: block; margin: 0 auto">

<br>

  The diffusion acquisition was simulated with the following parameters:

  - Phase direction: Y
  - No acceleration factor
  - No partial Fourier
  - TE = 108ms 
  - Dwell time = 1ms

** Important note about the Field Map: Please note that the same fieldmap is applied to all image volumes, regardless of head motion. This is a limitation of the current generation technique. In reality, the fieldmap should move with the head, but this is currently not the case in the simulated dataset.

#### 2022 update


To allow the creation of good Regions of Interest (ROIs), the ground truth tractogram was curated in Renauld2023. It contained short / long / looping / broken streamlines.

<img style="display:block; margin-left: auto; margin-right: auto; width: 70%;" 
  src="/images/ismrm2015/looping_fibers.png">

##### Modifications

The list of modifications should be published soon in a journal paper. In summary:

1. Streamlines from the ground truth bundles were filtered to keep only those with length in the range 20-200mm. 
2. Streamlines presenting looping shapes or classified as outliers by the script scil_outlier_rejection.py were discarded (the alpha parameter was defined bundle-wise by an expert, based on visual inspection of the results). 
3. Quickbundles was used on each bundle in order to inspect the variation of shape amongst streamlines. 
4. Some sub-bundles were rejected based on visual inspection. In particular, the second tail of the ICP was judged non-anatomically verified and removed. 
5. Finally, some bundles were modified: A) Streamlines from the ILF and OR were rejected based on manually drawn regions of interest (ROIs) to better separate the two bundles. B) CST, POPT and FPT were merged together into a new bundle called corona radiata. 

The new filtered data is offered, together with the new scoring system, in the <a href="/ismrm2015/tools">Tools page</a>.

<figure style="width:100%">
    <img style="display:block; margin-left: auto; margin-right: auto; width: 60%;" src="/images/ismrm2015/OR_ILF_fleche.png">
    <figcaption style="text-align:center">On the left: Initial ILF (pink) and OR (blue). On the right: Curated version.</figcaption>
</figure>
