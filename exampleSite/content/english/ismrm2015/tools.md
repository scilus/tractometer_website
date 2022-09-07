---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "Score your own tractogram (link to the tools)"
# meta description
description: "This is meta description"
draft: false
---

In order to allow people to reproduce results and score new tractograms, the Challenge team has made a standalone version of the scoring script available to anyone who might be interested.

Please note that version <i>v1.0.1</i> is exactly the same as what was used to generate the scores presented on this website and in the paper. Any remaining issue was already present at the time.

This version is also accessible using <a href="https://doi.org/10.5281/zenodo.810130"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.810130.svg" alt="DOI"></a>.

The scoring tool and its documentation are available in this <a href="https://github.com/scilus/ismrm_2015_tractography_challenge_scoring"> Github repository </a> of the <a href="http://scil.dinf.usherbrooke.ca/">SCIL</a>.

in addition to the code available in the <a href="ismrm2015/tools"> Tools page </a>, these data archives are needed to score a new tractogram. They contain the bundles, together with bundle masks and other files necessary to run the code.

<table style="border:1px solid #0AA8A7">

<tr style="border:1px solid #0AA8A7">
<td ></td>
<td><b>2015 version</b></td>
<td><b>2022 version</b></td>
</tr>


<tr>
<th style="width:10%"><b>Ground truth bundles only</b></th>

<td style="width:40%">

- <a href="https://scil.usherbrooke.ca/ismrm2015/ISMRM_2015_Tracto_challenge_ground_truth_bundles_VTK_v2.zip">Link here in VTK format</a> (SEE NOTE BELOW).
- Contains the 25 ground truth bundles,
- md5: d5696ef555d669c1cfd341c0713c6ff4.
- Initial version, same as in 2015. 
</td>

<td style="width:40%">

- <a href="https://scil.usherbrooke.ca/ismrm2015/ISMRM_2015_Tracto_challenge_ground_truth_bundles_VTK_v2.zip">Link here, in TRK format</a>.
- Contains the 21 bundles prepared for an easier management with ROI segmentation.
- Added on 2022.09.08
- File formats should be read adequately by scilpy / dipy 's latest versions.
</td>
</tr>

<tr style="border:1px solid #0AA8A7">
<th><b>Complete scoring data</b></th>

<td>

- Initial version, to be used with Recobundles.
- Contains the bundles, the bundle masks and a configuration file with all parameters necessary for Recobundles.
</td>
<td>

- Complete scoring data for the **ROI-based segmentation**:
</td>
</tr>
</table>