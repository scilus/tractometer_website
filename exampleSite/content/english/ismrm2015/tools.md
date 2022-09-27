---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "Score your own tractogram (link to the tools)"
# meta description
description: "This is meta description"
draft: false
---

The code below allows anyone interested to **score their own tractogram**. 

Please be careful: verify that final segmented bundles are well aligned with your initial tractogram, showing that space attributes were correctly interpreted. 

These data archives are needed to score a new tractogram. They contain the same bundles as in the <a href="/ismrm2015/tractography_data"> Tractography data page </a>, along with bundle masks and other files necessary to run the code.


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