---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "Score your own tractogram (link to the tools)"
# meta description
description: "This is meta description"
draft: false
---

The code below allows anyone interested to **score their own tractogram**. 



### History: why we made two versions

Together with the updated ground truth tractogram (see description in the phantom creation process page), we have also updated the bundle segmentation technique. Why?

The original goal imagined by the leading team of the Challenge was to evaluate all submissions using ROI segmentation. However, during the initial evaluation phase, it became evident that the ROIs would be very difficult to create in this dataset simulating real-world conditions. For example, the classical approach uses masks of the endpoints of ground truth bundles to determine if streamlines are valid connections. However, with that data, endpoints masks being only 1 voxel thick and did not suffice to recover streamlines in most cases. It was evident that the manual creation of ROIs that would work well, even considering the big variability amongst submission, would be very time-consuming. The team had a close deadline to be able to present their result at the Diffusion Study Group Worshop, and the choice that was made was to use Recobundles, a novel bundle segmentation tool at the time. That choice offered a quick way to obtain acceptable results, enough to lead to a good analysis of submissions, providing insightful conclusions of the challenge, published in the 2017 paper.

In 2022 however, it became clear that the ISMRM 2015 Challenge was still very much used by the tractography community. A careful examination of the Recobundles results on the initial submissions led our team to decide to tackle the difficult task of manual creating ROIs that would allow a more precise and refined segmentation of the bundles.


- See the <a href="/tractometer/bundle_segmentation">Tractometer's description of the bundle segmentation processes</a>.

- See the <a href="/ismrm2015/tools">Tools page</a> to download the code and **score your own tractogram**.

<br>


### Preparing your tractogram

** **AN IMPORTANT NOTE ON FILE FORMAT**: Data format managing was not very well defined in 2015. A lot of effort was made to ensure that data would be readab>



  Please be careful: verify that final segmented bundles are well aligned with your initial tractogram, showing that space attributes were correctly interpre>



Ground truth data + Code
########################

<table style="border:1px solid #0AA8A7;width:80%;margin-left:auto; margin-right:auto;">

<tr>
<td style="width:40%;border:1px solid #0AA8A7"> <b>2022 version: To be used with ROI-based segmentation</b><br><br>

- Scripts are offered in <a href="https://github.com/scilus/scilpy"> scilpy</a>. In can be used in a terminal with a command line such as:

    <p style="background-color:#323232; color:#e5e5e5"> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    python scil_score_tractogram.py [more information to come] 
    </p>

- Should be used with [this scoring_data]. It contains the bundles, the bundles masks and the configuration file to be used with the mentionned script.
</td>
</tr>




<tr>
<td style="width:40%"> <b>2015 version: Initial version, to be used with Recobundles.</b><br><br>

- <a href="https://github.com/scilus/ismrm_2015_tractography_challenge_scoring"> Link to the Github repository containing the code </a>. When used to score the 2015 submissions, it generates the exact same results as in the paper. Compared to the initial version, the only changes concern processing speed. Any remaining issue was already present at the time. An example of command line is given in the README file.
    <p style="background-color:#323232; color:#e5e5e5"> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      ./scripts/score_tractogram.py YOUR_TRACTOGRAM_FILE scoring_data/ results/
    </p>

- The version v1.0.1 released in 2015, in python2 and deprecated, is still available. <a href="https://doi.org/10.5281/zenodo.810130"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.810130.svg" alt="DOI"></a>
- Should be used with <a href="https://scil.usherbrooke.ca/ismrm2015/scoring_data_tractography_challenge.tar.gz"> this scoring_data </a>, which contains the bundles, the bundle masks and a configuration file with all parameters necessary for Recobundles.
</td>
</tr>

</table>



  [comment]: <> (md5 TCK: 1fee5fb38db7fcf924984add25d2b370. TRK: 4efe8b07a9cc5cbbd96227ca255ccd5a)
