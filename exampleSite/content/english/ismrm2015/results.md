---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "The results"
# meta description
description: "This is meta description"
draft: false
---


### History: why we made two versions

<i>The process of segmenting bundles from a tractogram is not an easy task!</i>

The original goal imagined by the leading team of the Challenge was to evaluate all submissions using ROI segmentation. However, during the initial evaluation phase, it became evident that the ROIs would be very difficult to create in this dataset simulating real-world conditions. For example, the classical approach uses masks of the endpoints of ground truth bundles to determine if streamlines are valid connections. However, with that data, endpoints masks being only 1 voxel thick and did not suffice to recover streamlines in most cases. It was evident that the manual creation of ROIs that would work well, even considering the big variability amongst submission, would be very time-consuming. The team had a close deadline to be able to present their result at the Diffusion Study Group Worshop, and the choice that was made was to use Recobundles, a novel bundle segmentation tool at the time. That choice offered a quick way to obtain acceptable results, enough to lead to a good analysis of submissions, providing insightful conclusions of the challenge, published in the <a href="https://www.nature.com/articles/s41467-017-01285-x?report=reader" target="_blank">2017 paper</a>.

In 2022 however, it became clear that the ISMRM 2015 Challenge was still very much used by the tractography community. A careful examination of the Recobundles results on the initial submissions led our team to decide to tackle the difficult task of manual creating ROIs that would allow a more precise and refined segmentation of the bundles. This also led to a mendatory cleaning of the ground truth bundles, leading to 21 bundles in the latest version, available <a href="/ismrm2015/tractography_data">here</a>. 

- See the <a href="/tractometer/bundle_segmentation">Tractometer's description of the bundle segmentation processes</a>.

- See the <a href="/ismrm2015/tools">Tools page</a> to download the code and **score your own tractogram**.

<br>

### Scores of all tractograms submitted in 2015

<br>

#### 1. Results using Recobundles for segmentation

##### A. Initial results, as in the 2015 paper

These are the results as presented in the original paper (initial data, scoring based on segmentation with **Recobundles**). 

**Please be careful!** Wrong numbers have sometimes been published in papers citing the ISMRM Challenge paper. Also, numbers previously contained on this page also presented errors. Always refer to this new table. They are in accordance with data published in the 2015 paper.

<a href="/results_ismrm/initial/summary_as_image.png">
    <figure style="float:right">
        <img src="/results_ismrm/initial/summary_as_image.png" width="100%">
        <figcaption style="text-align:center">Fig 1. Initial scores. Mean scores over all bundles, again averaged over all submitted tractograms.</figcaption>
    </figure>
</a>


<details>
  <summary>Click to download detailed scores</summary>

You may download the details here:

- <a href="/results_ismrm/initial/WEB_initial_scores_cleaned.xlsx">Download as Excel file</a>
- <a href="/results_ismrm/initial/as_html/WEB_initial_scores_cleaned.html">View results in your browser</a>
- Load results printed as PDF:
  - <a href="results_ismrm/initial/as_pdf/Merged_tabs.pdf">Ordered by submission number</a>. 
  - <a href="results_ismrm/initial/as_pdf/Merged_tabs_ordered.pdf">Ordered by scores</a>.

</details>


##### B. Results with updated bundle masks

These are nearly the same as above, with the same ground truth bundles and the same scoring system based on Recobundles, but with updated bundle masks. As suggested in 2017 in <a href="https://www.frontiersin.org/articles/10.3389/fninf.2017.00042/full">Rheault et al</a>, bundle masks should not recover only voxels containing streamlines points (even after resampling), but should rather account for the whole segment between two points. New bundles masks were computed with newer scripts <a href="https://scilpy.readthedocs.io/en/latest/?badge=latest">(scil_compute_streamlines_density_maps)</a>. Segmented bundles are thus the same (VS, IS, VB), but OL, OR, ORn, f1 metrics are slightly improved.


<a href="/results_ismrm/updated_bundle_masks/summary_as_image.png">
    <figure style="float:right">
        <img src="/results_ismrm/updated_bundle_masks/summary_as_image.png" width="100%">
        <figcaption style="text-align:center">Fig 2. Scores with updated bundle masks. Mean scores over all bundles, again averaged over all submitted tractograms.</figcaption>
    </figure>
</a>

<details>
  <summary>Click to download detailed scores</summary>

You may download the details here:

- <a href="/results_ismrm/updated_bundle_masks/WEB_updated_scores_new_bundle_masks.xlsx">Download as Excel file</a>
- <a href="/results_ismrm/updated_bundle_masks/as_html/WEB_updated_scores_new_bundle_masks.html">View results in your browser</a>
- Load results printed as PDF: 
  - <a href="/results_ismrm/updated_bundle_masks/as_pdf/Merged_tabs.pdf">Ordered by submission number</a>.
  - <a href="/results_ismrm/updated_bundle_masks/as_pdf/Merged_tabs_ordered.pdf">Ordered by scores</a>.

</details>

#### 2. Results using the ROI segmentation

These results were computed with 1) curated data (cleaner bundles, see <a href="/results_ismrm/tractography_data"> here </a> for more explanation) and 2) segmentation of the submitted tractograms with ROIs rather than Recobundles. These results should be compared with previous versions with care as data now contains 21 bundles instead of 25. These results should be published soon in an upcoming paper. 

<a href="/results_ismrm/2022_version/summary_as_image.PNG">
    <figure style="float:center">
        <img style="display:block; margin-left: auto; margin-right: auto; width: 80%;" src="/results_ismrm/2022_version/summary_as_image.PNG">
        <figcaption style="text-align:center">Fig 3. Results with the cleaner ground truth bundles, with ROI segmentation. Mean scores over all bundles, again averaged over all submitted tractograms.</figcaption>
    </figure>
</a>

<details>
  <summary>Click to download detailed scores</summary>

You may download the details here:

- <a href="/results_ismrm/2022_version/WEB_2022_scores.xlsx">Download as Excel file</a>
- <a href="/results_ismrm/2022_version/as_html/WEB_updated_scores_new_bundle_masks.html">View results in your browser</a>
- Load results printed as PDF: 
  - <a href="/results_ismrm/2022_version/as_pdf/Merged.pdf">Ordered by submission number</a>.
  - <a href="/results_ismrm/2022_version/as_pdf/Merged_ordered.pdf">Ordered by scores</a>.

</details>

<br>


### Link to all the raw submission files

All submissions files are downloadable through <a href="https://doi.org/10.5281/zenodo.840086">Zenodo. <img src="https://zenodo.org/badge/DOI/10.5281/zenodo.840086.svg" alt="DOI"> </a>

[comment]: <> (If you are unsure of the submission IDs assigned to your group, please use the <a href="/tractometer/contact_and_support">contact page</a> to ask for them.)


