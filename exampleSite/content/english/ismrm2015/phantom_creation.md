
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "The phantom creation process"
# meta description
description: "This is meta description"
draft: false
---

All dwi data is available for downloads in the <a href="/ismrm2015/dwi_data">DWI page</a>.

All tractograms are available for downloads in the <a href="/ismrm2015/tools">Tools page</a>.

### Data generation in 2015
 
   1. White matter bundles were manually segmentated from a HCP subject's tractogram based on definitions found in <a href="http://www.springer.com/medicine/neurology/book/978-3-642-20455-5" target="_blank">Diffusion Tensor Imaging, Introduction and Atlas</a>, which was written by challenge coorganizers Bram Stieltjes and Klaus Maier-Hein, as well as R.M. Brunner and F.B. Laun. To create these 25 bundles, an expert segmented meticulously streamlines of a global tracking on HCP data, the bundle masks were computed, and bundle-specific deterministic tracking was performed by seeding extensively inside each bundle mask.

   2. The final tractogram was then used in <a href="http://docs.mitk.org/2014.10/org_mitk_views_fiberfoxview.html" target="_blank">Fiberfox</a> to simulate the fitting DWI that can be found in the <a href="/ismrm2015/dwi_data">DWI data page</a>, as described in the <a href="http://onlinelibrary.wiley.com/doi/10.1002/mrm.25045/abstract" target="_blank">Fiberfox paper</a> by Neher et al. The aim was to create a realistic, clinical-style dataset that provided challenging bundles configurations.

   3. In 2023, to allow the creation of good Regions of Interest (ROIs), the ground truth tractogram was curated in <a href="/ismrm2015/references">Renauld2023</a> as it contained short / long / looping / broken streamlines. This data corresponds less with the simulated DWI but is also available for downloads for our most curious users.

<img src="/images/ismrm2015/data_creation_process.png" height="550px" style="display: block; margin: 0 auto">

  The diffusion acquisition was simulated with the following parameters:

  - Phase direction: Y
  - No acceleration factor
  - No partial Fourier
  - TE = 108ms 
  - Dwell time = 1ms

** Important note about the Field Map: Please note that the same fieldmap is applied to all image volumes, regardless of head motion. This is a limitation of the current generation technique. In reality, the fieldmap should move with the head, but this is currently not the case in the simulated dataset.


The new filtered data is offered, together with the new scoring system, in the <a href="/ismrm2015/tools">Tools page</a>.
