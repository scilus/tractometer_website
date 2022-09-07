
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "Tractography data"
# meta description
description: "This is meta description"
draft: false
---

### Data creation

 <details>
  <summary>Click to show details</summary>

#### 2015

The ground truth was a human-like tractogram containing 25 bundles. To create these bundles, an expert segmented meticulously streamlines of a global tracking on HCP data, the bundle masks were computed, and bundle-specific deterministic tracking was performed by seeding extensively inside each bundle mask. The final tractogram was then used in Fiberfox to simulate the fitting DWI that can be found in the <a href="/ismrm2015/dwi_data">DWI data page</a>. 

#### 2022

##### History: Why we have two versions

The goal of the challenge was to analyze the quality of bundles created by participating teams and compare the associated pipelines. Bundles were analyzed as whole entities, but the quality of individual streamlines composing them was not verified. In fact, they were not verified in the ground truth bundles either. Ground truth data contained short / long / looping / broken streamlines.

<img style="display:block; margin-left: auto; margin-right: auto; width: 70%;" 
  src="/images/ismrm2015/looping_fibers.png">

##### Modifications

The list of modifications should be published soon in a journal paper. In summary:

1. Streamlines from the ground truth bundles were filtered to keep only those with length in the range 20-200mm. 
2. Streamlines presenting looping shapes or classified as outliers by the script scil_outlier_rejection.py were discarded (the alpha parameter was defined bundle-wise by an expert, based on visual inspection of the results). 
3. Quickbundles was used on each bundle in order to inspect the variation of shape amongst streamlines. 
4. Some sub-bundles were rejected based on visual inspection. In particular, the second tail of the ICP was judged non-anatomically verified and removed. 
5. Finally, some bundles were modified: A) Streamlines from the ILF and OR were rejected based on manually drawn regions of interest (ROIs) to better separate the two bundles. B) CST, POPT and FPT were merged together into a new bundle called corona radiata. 

<figure style="width:100%">
    <img style="display:block; margin-left: auto; margin-right: auto; width: 60%;" src="/images/ismrm2015/OR_ILF_fleche.png">
    <figcaption style="text-align:center">On the left: Initial ILF (pink) and OR (blue). On the right: Curated version.</figcaption>
</figure>

<br>

</details>

### Downloading the ground truth bundles:

You may download here the bundles only or go to the <a href="/ismrm2015/tools"> Tools page</a> to download the whole scoring archives.

<table style="border:1px solid #0AA8A7">

<tr style="border:1px solid #0AA8A7">

<tr>
<td style="width:40%">
<b>2015 version</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/ISMRM_2015_Tracto_challenge_ground_truth_bundles_VTK_v2.zip">Link here in VTK format</a> (SEE NOTE BELOW).
- Contains the 25 ground truth bundles,
- md5: d5696ef555d669c1cfd341c0713c6ff4.
- Initial version, same as in 2015. 
</td>

<td style="width:40%">
<b>2022 version</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/ISMRM_2015_Tracto_challenge_ground_truth_bundles_VTK_v2.zip">Link here, in TRK format</a>.
- Contains the 21 bundles prepared for an easier management with ROI segmentation.
- Added on 2022.09.08
- File formats should be read adequately by scilpy / dipy 's latest versions.
</td>

</table>

** **AN IMPORTANT NOTE ON FILE FORMAT**: Data format managing was not very well defined in 2015. A lot of effort was made to ensure that data would be readable by any software. Yet, things have evolved. As of 08.2022, the standalone tool has been updated. The code is now in python3, and tractograms are loaded through Dipy's Stateful Tractogram tools. Previous version of the code applied authomatic 0.5 shifts when loading files as trk, this is NOT done anymore. We have removed the .tck and .trk versions. Please use the safer .fib version (VTK files). These files are easily loadable through Dipy / Scilpy, the two libraries we use. The .fib files are also the ones included in the whole scoring archive in the Tools page.


  [comment]: <> (md5 TCK: 1fee5fb38db7fcf924984add25d2b370. TRK: 4efe8b07a9cc5cbbd96227ca255ccd5a)



