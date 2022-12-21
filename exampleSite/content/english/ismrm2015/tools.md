---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "Score your own tractogram (link to the tools)"
# meta description
description: "This is meta description"
draft: false
---

The code below allows anyone interested to **score their own tractogram**. 
<br>


### Preparing your tractogram

** **AN IMPORTANT NOTE ON FILE FORMAT**: Data format managing was not very well defined in 2015. A lot of effort was made to ensure that data would be readable by any software. Yet, things have evolved. As of 08.2022, in both versions of the scoring (Recobundles version through the initial standalone tool, ROIs version using scilpy scripts), tractograms are loaded through Dipy's Stateful Tractogram functions. This is particularly important if you already used the standalone tool before. Previous version of the code applied authomatic 0.5 shifts when loading files as trk. In the new python3 version, this is NOT done anymore. Please be careful: verify that final segmented bundles are well aligned with your initial tractogram, showing that space attributes were correctly interpreted.



### Ground truth data + Code

  [comment]: <> (I should be able to add a code snippet here. Using three backslash ` before and after. Or ```sh at the beginning)

  [comment]: <> (The result is super ugly. Huge linebreaks. Can't find how to make it work. Using a picture for now.)

<table style="border:1px solid #0AA8A7;width:80%;margin-left:auto; margin-right:auto;">

<tr>
<td style="width:40%;border:1px solid #0AA8A7"> <b>2022 version: ROI-based segmentation</b><br><br>

- Scripts are offered in <a href="https://github.com/scilus/scilpy"> scilpy</a>. It can be run using the following steps: 1) Segmentation of the bundles and sub-bundles. 2) Merging back sub-bundles of the CC and ICP. 3) Scoring the final bundles.

<a href="/code_snippets/tools_scoring_code_2022.sh">
    <figure>
        <img src="/code_snippets/ismrm_2022_code.png" width="50%" style="display:block; margin-left: auto; margin-right: auto;">
        <figcaption style="text-align:center">Click on the figure to download the bash script.</figcaption>
    </figure>
</a>

- This code should be used with <a href="https://scil.usherbrooke.ca/ismrm2015/scoring_data_2022-12-20_submittedNature.zip"> this scoring data </a>. It contains the bundles, the bundle masks and the configuration files to be used with the mentionned script.

- These ground truth bundles were modified compared to the initial version in order to have bundles that allowed creation of ROIs. Modifications are detailed in the Renauld 2023. In short, looping and broken streamlines were discarded, and the CSF / FPT / POPT were merged as one bundle called Brainstem Projection System (BPS). This scoring technique thus offers scores for 21 bundles instead of 25.

</td>
</tr>




<tr>
<td style="width:40%"> <b>2015 version: Recobundles-based segmentation</b><br><br>

- <a href="https://github.com/scilus/ismrm_2015_tractography_challenge_scoring"> Link to the Github repository containing the code </a>. Code was updated to python3 as of 08.2022. The only changes concern processing speed, and tractogram format management, as described above. When used to score the 2015 submissions, it generates the exact same results as in the paper. Any remaining issue was already present at the time. The version v1.0.1 released in 2015, in python2 and deprecated, is still available. 

- An example of command line is given in the README file. <a href="https://doi.org/10.5281/zenodo.810130"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.810130.svg" alt="DOI"></a>

- Should be used with <a href="https://scil.usherbrooke.ca/ismrm2015/scoring_data_tractography_challenge.tar.gz"> this scoring_data </a>, which contains the bundles, the bundle masks and a configuration file with all parameters necessary for Recobundles.
</td>
</tr>

</table>



  [comment]: <> (md5 TCK: 1fee5fb38db7fcf924984add25d2b370. TRK: 4efe8b07a9cc5cbbd96227ca255ccd5a)

### History: why we made two versions

The original goal imagined by the leading team of the Challenge was to evaluate all submissions using ROI segmentation. However, during the initial evaluation phase, it was decided that the manual creation of acceptable ROIs (even considering the large variability amongst submissions), would be very time-consuming. The team had a close deadline to be able to present their result at the Diffusion Study Group Worshop, and the choice was made to use Recobundles, a novel bundle segmentation tool at the time. That choice offered a quick way to obtain results good enough to lead to a correct analysis of submissions, providing insightful conclusions of the challenge. Results of the scoring of bundles segmented with Recobundles are published in <a href="/ismrm2015/references">Maier-Hein 2017</a>.

Years later, it became clear that the ISMRM 2015 Challenge was still very much used by the tractography community. A careful examination of the Recobundles results on the initial submissions revealed that some bundles were recurrently poorly segmented. Recobundles has limitations: it depends on thresholds and on the order of the bundles during scoring. We decided to tackle the difficult task of manually creating ROIs that would allow a more precise and stable segmentation of the bundles. With this second technique, scores are similiar overall, but some bundles show major changes in scoring (see the <a href="/ismrm2015/references">Renauld 2023</a>). This new segmentation choice is more stable and should now be preferred.

- See the <a href="/tractometer/bundle_segmentation">Tractometer's description of the bundle segmentation processes</a>.

