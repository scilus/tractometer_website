
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "DWI data"
# meta description
description: "This is meta description"
draft: false
---


### Data description

The clinical-style challenge dataset consists of a 2mm isotropic diffusion acquisition, with 32 gradient directions, b-value=1000 s/mm<sup>2</sup>. It also contains one b=0 image and an optional b=0 volume, with reversed phase-encoding direction. Additionnaly, a T1-like image is provided.

<a href="/images/ismrm2015/dwi_fieldmap_t1_slice.png">
    <figure style="float:right; width:100%">
        <img style="display:block; margin-left: auto; margin-right: auto; width: 70%;" 
             src="/images/ismrm2015/dwi_fieldmap_t1_slice.png">
        <figcaption style="text-align:center">From left to right: DWI, fieldmap and T1.</figcaption>
    </figure>
</a>


### Downloads

All datasets refer to the same "subject". All files necessary to run the standalone scoring script -- config file, masks of the bundles (along with the ground-truth bundles) -- are available in the <a href="/ismrm2015/tools">Tools</a> tab.

<table style="border:1px solid #0AA8A7">
<tr>
<td style="width:50%">
<b>Basic dataset</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/ISMRM_2015_Tracto_challenge_data_v1_1.zip">Link here</a>.
- Contains the DWI, the field map, the T1 image and the gradients information.
- md5: 6ab9c875709e73ab394a09aac66356ff
- Updated on 2015-03-06. Changes: new readme file. 
</td>
<td style="width:50%">
<b>Dataset with additional, reversed-phase b=0</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/ISMRM_2015_Tracto_challenge_data_with_reversed_phase_v1_0.zip">Link here</a>.
- Contains the same datasets as the basic dataset, with an additional B=0 image, with the reversed phase-encoding direction. 
- md5: a08671a9e302d84af18bd391d70cb671
- Added on 2015-04-01. 
</td>
</tr>
<tr style="border:1px solid #0AA8A7">
<td>
<b>Files used to generate the Ground Truth DWI</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/FilesForSimulation_v1.zip">Link here</a>. 
- The files of this archive can be used with  <a href="http://docs.mitk.org/nightly/org_mitk_views_fiberfoxview.html" target="_blank">Fiberfox</a> to generate the ground truth DWI datasets. See included Readme file for more information. 
- md5: c7c874a28dc24773afcbc5afa6293257
- Was added on 2015-07-20. 
</td>
<td>
<b>Ground truth, artifact-free DWI</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/ISMRM_2015_Tracto_challenge_ground_truth_dwi_v2.zip">Link here</a>.
- The ground truth Diffusion Weighted Image, without any artifact. Includes the gradients information. 
- md5: 2bfc6b19136f10e8ee10079fa0c53274
- Was updated on 2015-07-20. 
</td>
</tr>
</table>


<br>

### Archive integrity verification


You can check the integrity of your download by computing the MD5 checksum of the downloaded archive. The value you should get for each download is written above. Instructions on how to do so:

- <a href="https://help.ubuntu.com/community/HowToMD5SUM" target="_blank">Linux</a>
- <a href="http://osxdaily.com/2009/10/13/check-md5-hash-on-your-mac/" target="_blank">OS X</a>
- <a href="http://superuser.com/questions/89191/looking-for-md5-utility-that-integrates-to-windows" target="_blank">Windows</a>



<br>

