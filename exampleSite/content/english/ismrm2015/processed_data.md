
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "An example of processed data"
# meta description
description: "This is meta description"
draft: false
---

### Usage

We offer here examples of tractograms created on carefully preprocessed data. The preprocessing choices were made *after* the publication of the <a href="/ismrm2015/references">2015 paper</a>, with knowledge available from the analysis of the results presented above. Feel free to use. For instance, this could be used as training set in a machine learning experiment, to avoid training on the ground truth data. Please visit the  <a href="/ismrm2015/references">References</a> page to cite us if you use this data.

### Data creation

 <details>
  <summary>Click to show details</summary>

The general steps are as in the description <a href="https://tractoflow-documentation.readthedocs.io/en/latest/pipeline/steps.html">in the Tractoflow documentation</a>. Data was run with an adapted tractoflow based on version 2.3.0.

- DWI: Brain extraction, DWI denoising, Eddy/Topup, N4, Cropping, Normalization, Resampling, Extraction of fODF shells, Computation of fODF metrics.
- T1: Denoising, N4, Resampling, Brain extraction, Croping, Registration on the DWI, Segmentation of tracking/seeding maps.
- Tractography: seeding from the WM mask, npv 10, we offer here both local tracking and PFT tracking.

Modified steps were: 

<table style="width:100%">
<tr>
<td style="text-align:center;width:12%">
<b>NoArtefact</b>
</td>

<td> 

- DWI skull-stripping: Visually, we could see that there was no skull and little noise in the background. A simple threshold at value 50 allows a good brain extraction, rather than using BET.
- DWI denoising, Topup and Eddy and N4 were skipped as DWI data was not noisy.
- T1 Denoising and N4 were skipped.
- T1 skull-stripping: Visually, we could see that there was no skull and little noise in the background. A threshold at value 50 allows a good brain extraction but creates some holes. The mask was dilated (4-pass) and eroded (4-pass) to fill the holes.
- T1 and DWI were already well aligned and registration was skipped (affines were fixed to have the same affine for both files).
- WM mask: Due to the fact that this is simulated data, dilating the white matter mask (2-pass) before using it as tracking/seeding mask allowed better results.
</td>
</tr>

<tr>
<td style='text-align:center;'>
<b>Basic</b>
</td>

<td> 

- Topup was skipped, ignoring the reverse-phase b0.
- T1 N4 step was skipped. Denoising was performed but N4 seemed to produce weird results on this simulated data. It was skipped.
</td>
</tr>
  
<tr>
<td style='text-align:center;'>
<b>WithReverse</b>
</td>

<td> Same as above, except 2nd timepoint of the DWI was extracted, named rev_b0 and added to the input data to allow using the topup step.
</td>
</tr>
</table>

</details>

### Download


<table style="border:1px solid #0AA8A7">

<tr style="border:1px solid #0AA8A7">

<tr>
<td>
<b>No artefact</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/???">Link here</a>.

</td>

<td>
<b>Basic</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/???">Link here</a>.

</td>

<td>
<b>With reverse-phase b0</b><br><br>

- <a href="https://scil.usherbrooke.ca/ismrm2015/???">Link here</a>.

</td>

</table>

Here are the results for these files.
<a href="/results_ismrm/updated_bundle_masks/as_image/updated_bundles_mean_scores.png">
    <figure style="float:right">
        <img src="/results_ismrm/updated_bundle_masks/summary_as_image.png" width="100%">
        <figcaption style="text-align:center">Fig 4. WRONG TABLE FOR NOW. PREPARING STUFF. TODO.</figcaption>
    </figure>
</a>
