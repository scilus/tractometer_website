
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "Data"
# meta description
description: "This is meta description"
draft: false
---


### Data generation

<details>
  <summary>Click to show</summary>
  
   1. White matter bundles were manually segmentated from a HCP subject's tractogram based on definitions found in
    <a href="http://www.springer.com/medicine/neurology/book/978-3-642-20455-5"
    target="_blank">Diffusion Tensor Imaging, Introduction and Atlas</a>, which
    was written by challenge coorganizers Bram Stieltjes and Klaus Maier-Hein, as well as R.M. Brunner and F.B. Laun.

   2. The ISMRM 2015 Tractography challenge was based on an artificial phantom generated using the
    <a href="http://docs.mitk.org/2014.10/org_mitk_views_fiberfoxview.html" target="_blank">Fiberfox</a>,
    based on these 25 manually segmented bundles, which serve as ground truth models. They are
    used as <b> artificial fibers </b> to generate the raw diffusion MRI dataset, as described in the
    <a href="http://onlinelibrary.wiley.com/doi/10.1002/mrm.25045/abstract" target="_blank">Fiberfox paper</a>
    by Neher et al. Hence, this is just another way to generate a
    phantom dataset based on realistic looking streamline fibers. The aim
    was to create a realistic, clinical-style dataset that provided challenging
    bundles configurations.

<img src="/images/ismrm2015/data_creation_process.png" height="550px" style="display: block; margin: 0 auto">

</details>

### Data description

<details>
  <summary>Click to show</summary>

  The clinical-style challenge dataset consists of a 2mm isotropic diffusion acquisition, with 32 gradient directions, b-value=1000 s/mm<sup>2</sup>. It also contains one b=0 image and an optional b=0 volume, with reversed phase-encoding direction. Additionnaly, a T1-like image is provided.

<img src="/images/ismrm2015/dwi_slice.png" height="250px" style="display: block; margin: 0 auto">

<img src="/images/ismrm2015/fieldmap_slice.png" height="250px" style="display: block; margin: 0 auto">

<img src="/images/ismrm2015/t1_slice.png" height="250px" style="display: block; margin: 0 auto">

 </details>


### Acquisition parameters

<details>
  <summary>Click to show</summary>

  The diffusion acquisition was simulated with the following parameters:

  - Phase direction: Y
  - No acceleration factor
  - No partial Fourier
  - TE = 108ms 
  - Dwell time = 1ms

** Important note about the Field Map: Please note that the same fieldmap is applied to all image volumes, regardless of head motion. This is a limitation of the current generation technique. In reality, the fieldmap should move with the head, but this is currently not the case in the simulated dataset.

</details>

### Downloads


<details>
  <summary>Click to show</summary>

All datasets refer to the same "subject". All files necessary to run the standalone scoring script -- config file, masks of the bundles (along with the ground-truth bundles) -- are available in the <a href="/ismrm_2015_challenge/tools">Tools</a> tab.

- <a href="{{ DOWNLOAD_URL }}downloads/ISMRM_2015_Tracto_challenge_data_v1_1.zip">Basic dataset</a>. 
   - Updated on 2015-03-06.
   - Changes: new readme file. Contains the DWI, the field map, the T1 image and the gradients information.
   - md5: 6ab9c875709e73ab394a09aac66356ff
- <a href="{{ DOWNLOAD_URL }}downloads/ISMRM_2015_Tracto_challenge_data_with_reversed_phase_v1_0.zip">Dataset with additional, reversed-phase b=0</a>. 
   - Added on 2015-04-01. 
   - Contains the same datasets as the basic dataset, with an additional B=0 image, with the reversed phase-encoding direction. 
   - md5: a08671a9e302d84af18bd391d70cb671
- Ground truth bundles: <a href="{{ DOWNLOAD_URL }}downloads/ISMRM_2015_Tracto_challenge_ground_truth_bundles_VTK_v2.zip">VTK format</a>, or <a href="{{ DOWNLOAD_URL }}downloads/ISMRM_2015_Tracto_challenge_ground_truth_bundles_TCK_v2.zip">TCK format</a>, or  <a href="{{ DOWNLOAD_URL }}downloads/ISMRM_2015_Tracto_challenge_ground_truth_bundles_TRK_v2.zip">TRK format</a>.
    - The 25 basic ground truth bundles. Note: they are saved in a LPS space, to make sure they fit with the DWI dataset.
    - md5: VTK: d5696ef555d669c1cfd341c0713c6ff4. TCK: 1fee5fb38db7fcf924984add25d2b370. TRK: 4efe8b07a9cc5cbbd96227ca255ccd5a
- <a href="{{ DOWNLOAD_URL }}downloads/ismrm_challenge_2015/ISMRM_2015_Tracto_challenge_ground_truth_dwi_v2.zip">Ground truth, artifact-free DWI</a>.
    - The ground truth Diffusion Weighted Image, without any artifact. Includes the gradients information. 
    - Was updated on 2015-07-20. 
    - md5: 2bfc6b19136f10e8ee10079fa0c53274
- <a href="{{ DOWNLOAD_URL }}downloads/ismrm_challenge_2015/FilesForSimulation_v1.zip">Files used to generate Ground Truth DWI</a>. 
    - The files of this archive can be used with  <a href="http://docs.mitk.org/nightly/org_mitk_views_fiberfoxview.html" target="_blank">Fiberfox</a> to generate the ground truth DWI datasets. See included Readme file for more information. 
    - Was added on 2015-07-20. 
    - md5: c7c874a28dc24773afcbc5afa6293257

</details>

### Archive integrity verification

<details>
  <summary>Click to show</summary>

You can check the integrity of your download by computing the MD5 checksum of the downloaded archive. Instructions on how to do so:

- <a href="https://help.ubuntu.com/community/HowToMD5SUM" target="_blank">Linux</a>
- <a href="http://osxdaily.com/2009/10/13/check-md5-hash-on-your-mac/" target="_blank">OS X</a>
- <a href="http://superuser.com/questions/89191/looking-for-md5-utility-that-integrates-to-windows" target="_blank">Windows</a>

The value you should get for each download is written after the download link, in the Downloads section.

</details>
