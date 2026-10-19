---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "Score your own tractogram (link to the tools)"
# meta description
description: "This is meta description"
draft: false
---

The code below allows anyone interested in scoring their own tractogram. 
<br>


### Preparing your tractogram

** **AN IMPORTANT NOTE ON FILE FORMAT**: Data format managing was not very well-defined in 2015. A lot of effort was made to ensure that data would be readable by any software. Yet, things have evolved. As of 08.2022, in both versions of the scoring (Recobundles version through the initial standalone tool, ROIs version using scilpy scripts), tractograms are loaded through Dipy's Stateful Tractogram functions. This is particularly important if you already used the standalone tool before. Previous version of the code applied authomatic 0.5 shifts when loading files as trk. In the new python3 version, this is NOT done anymore. Please be careful: verify that final segmented bundles are well aligned with your initial tractogram, showing that space attributes were correctly interpreted.

** **AN IMPORTANT NOTE ON SPACE MANAGEMENT**: In both versions, the final tractogram is expected to be in the T1 space to be scored. If you worked in the DWI space (very common), you probably have a registration matrix. You can apply its inverse to your final tractogram to send it back in T1 space (e.g., see scil_tractogram_apply_transform). Another possibility is to just pretend that your tractogram is in T1 space, because in practice, the T1 space and DWI space are closely aligned. Then, use a tractogram format that does not include space information in its header (e.g., .tck instead of .trk).


### Ground truth data + Code

  [comment]: <> (I should be able to add a code snippet here. Using three backslash ` before and after. Or ```sh at the beginning)

  [comment]: <> (The result is super ugly. Huge linebreaks. Can't find how to make it work. Using a picture for now.)

#### 1) 2023 version: ROI-based segmentation
 
- **Scoring data**: The required data (bundles, ROIS, config_files) can be downloaded <a href="https://scil.usherbrooke.ca/ismrm2015/scoring_data_Renauld2023.zip">here</a>. This zip file contains the bundles, the bundle masks and the configuration files to be used with the script, as detailed below. These ground truth bundles were modified compared to the initial version (Maier-Hein et al., 2017) in order to have bundles that allowed creation of ROIs. Modifications are detailed in <a href="/ismrm2015/references">Renauld et al., 2023</a>. In short, looping and broken streamlines were discarded, and the CSF / FPT / POPT were merged as one bundle called Brainstem Projection System (BPS). This scoring technique thus offers scores for 21 bundles instead of 25.

- **Script**: The bash script is available below, based on your scilpy version. The process is divided into the following steps: 1) Segmentation of the bundles and sub-bundles, 2) merging back sub-bundles of the CC and ICP, and 3) scoring the final bundles. Results are then stored in a results.json file. The bash script uses python scripts from the <a href="https://github.com/scilus/scilpy"> scilpy</a> library <a href="https://apertureneuro.org/article/154022-tractography-analysis-with-the-scilpy-toolbox"> (Renauld et al., 2026)</a>. The original scilpy version at the time of publication was 1.5.0, but you can use any scilpy version:

  - **scilpy version 1.5.0 to 1.x.x**: Here is the <a href="/code_snippets/scil_score_ismrm_Renauld2023.sh"> link to the bash script </a>. This scilpy version use python 3.7 and can be installed by downloading the <a href="https://github.com/scilus/scilpy/releases">release here</a> and using "`pip install .`" from inside the folder. 

  - **scilpy version 2.0.0 to 2.1.x**: The same <a href="/code_snippets/scil_score_ismrm_Renauld2023.sh"> bash script </a> still works. Many scilpy versions after 2.0.0 are now directly available for installation through <a href="https://pypi.org/project/scilpy/"> Pipy </a> (using "`pip install scilpy`") on python 3.10.
  
  - **scilpy version 2.2.0**: After version 2.2.0, the '.py' suffix of all scilpy scripts were dropped. You may delete them in the original bash script or download the <a href="/code_snippets/scil_score_ismrm_Renauld2023_scilpy2.2.0.sh"> updated bash script here </a>.

  - **scilpy version 2.2.2 and more**: The same <a href="/code_snippets/scil_score_ismrm_Renauld2023_scilpy2.2.0.sh"> updated bash script</a> still works, but after version 2.2.2, the config_file for tractometry changed. You may use <a href="/code_snippets/config_file_tractometry_scilpy2.2.2.json"> this new config file </a> to replace the one in the zip file.

  - Later versions: For help adapting these lines to later versions, please contact us.



#### 2) 2015 version: Recobundles-based segmentation</b><br><br>

- <a href="https://github.com/scilus/ismrm_2015_tractography_challenge_scoring"> Link to the GitHub repository containing the code </a>. Code was updated to python3 as of 08.2022. The only changes concern processing speed, and tractogram format management, as described above. When used to score the 2015 submissions, it generates the exact same results as in the paper. Any remaining issue was already present at the time. The version v1.0.1 released in 2015, in python2 and deprecated, is still available. 

- An example of command line is given in the README file. <a href="https://doi.org/10.5281/zenodo.810130"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.810130.svg" alt="DOI"></a>

- **Scoring data**: Should be used with <a href="https://scil.usherbrooke.ca/ismrm2015/scoring_data_tractography_challenge.tar.gz"> this scoring_data </a>, which contains the bundles, the bundle masks and a configuration file with all parameters necessary for Recobundles.

  [comment]: <> (md5 TCK: 1fee5fb38db7fcf924984add25d2b370. TRK: 4efe8b07a9cc5cbbd96227ca255ccd5a)


<br>

### History: why we made two versions

The original goal imagined by the leading team of the Challenge was to evaluate all submissions using ROI segmentation. However, during the initial evaluation phase, it was decided that the manual creation of acceptable ROIs (even considering the large variability amongst submissions), would be very time-consuming. The team had a close deadline to be able to present their result at the Diffusion Study Group Worshop, and the choice was made to use Recobundles, a novel bundle segmentation tool at the time. That choice offered a quick way to obtain results good enough to lead to a correct analysis of submissions, providing insightful conclusions of the challenge. Results of the scoring of bundles segmented with Recobundles are published in <a href="/ismrm2015/references">Maier-Hein 2017</a>.

Years later, it became clear that the ISMRM 2015 Challenge was still very much used by the tractography community. A careful examination of the Recobundles results on the initial submissions revealed that some bundles were recurrently poorly segmented. Recobundles has limitations: it depends on thresholds and on the order of the bundles during scoring. We decided to tackle the difficult task of manually creating ROIs that would allow a more precise and stable segmentation of the bundles. With this second technique, scores are similiar overall, but some bundles show major changes in scoring (see the <a href="/ismrm2015/references">Renauld 2023</a>). This new segmentation choice is more stable and should now be preferred.

- See the <a href="/tractometer/bundle_segmentation">Tractometer's description of the bundle segmentation processes</a>.

