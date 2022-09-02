---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "The results"
# meta description
description: "This is meta description"
draft: false
---

To understand the different between the different versions, please consult on the one hand, the Tractometer description page for
the difference in scoring methods, and on the other and, the ISMRM Challenge Data page for the difference in ground truth data.

### Initial results


<details>
  <summary>Click to show</summary>

These are the results as presented in the original paper (initial data, scoring based on segmentation with Recobundles). You may download the details as an <a href="/results_ismrm/initial/as_excel/WEB_initial_scores_cleaned.xlsx">excel file</a>, or <a href="/results_ismrm/initial/as_html/WEB_initial_scores_cleaned.html">view results in your browser</a>, or load results printed as PDF: <a href="results_ismrm/initial/as_pdf/Initial_scores_Merged_tabs.pdf">(results ordered by submission number)</a> or
    <a href="results_ismrm/initial/as_pdf/Initial_scores_Merged_tabs_ordered.pdf">(results ordered by scores)</a>.

<b>Please be careful! </b> Wrong numbers have been published in papers citing the ISMRM Challenge paper. Always refer to this table.

<img style="display: block; margin: 0 auto" width="100%"
   src="/results_ismrm/initial/as_image/initial_mean_scores.png">
Fig 1. Initial scores. Mean scores over all bundles, again averaged over all submitted tractograms.

</details>

### Initial results, with updated bundle masks

<details>
  <summary>Click to show</summary>

These are nearly the same as above, with the same ground truth bundles and the same scoring system based on Recobundles, but with updated bundle masks. As suggested in 2017 in <a href="https://www.frontiersin.org/articles/10.3389/fninf.2017.00042/full">Rheault et al</a>, bundle masks should not recover only voxels containing streamlines points (even after resampling), but should rather account for the whole segment between two points. New bundles masks were computed with newer scripts
    <a href="https://scilpy.readthedocs.io/en/latest/?badge=latest">(scil_compute_streamlines_density_maps)</a>. Segmented bundles are thus the same (VS, IS, VB), but OL, OR, ORn, f1 metrics are slightly improved.

You may download the details as an <a href="{/results_ismrm/updated_bundle_masks/as_excel/WEB_updated_scores_new_bundle_masks.xlsx">excel file</a>, or <a href="/results_ismrm/updated_bundle_masks/as_html/WEB_updated_scores_new_bundle_masks.html">view results in your browser</a>, or load results printed as PDF: <a href="/results_ismrm/updated_bundle_masks/as_pdf/Updated_scores_Merged_tabs.pdf">(results ordered by submission number)</a> or <a href="??">(results ordered by scores)</a>.

<img  style="display: block; margin: 0 auto" width="100%"
   src="/results_ismrm/updated_bundle_masks/as_image/updated_bundles_mean_scores.png">
Fig 2. Scores with updated bundle masks. Mean scores over all bundles, again averaged over all submitted tractograms.

</details>

### Results using the ROI-segmentation-based scoring

(Will be added soon).


### Links to the submissions


<details>
  <summary>Click to show</summary>

The full results of the challenge are presented here. We still refer to the submission IDs to make it easier for users to search for their submissions.

If you are unsure of the submission IDs assigned to your group, please use the <a href="/tractometer/contact_and_support">contact page</a> to ask for them.

All submissions files are downloadable through <a href="https://doi.org/10.5281/zenodo.840086">Zenodo
    <img src="https://zenodo.org/badge/DOI/10.5281/zenodo.840086.svg" alt="DOI"> </a>

</details>
