
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "The evaluation process"
# meta description
description: "This is meta description"
draft: false
---


### 1. Segmentation of the bundles

See the <a href="/tractometer/bundle_segmentation">Tractometer's description of the bundle segmentation process</a>.
The results have originally been published using Recobundles, but an updated version using ROIs is in preparation.

<ul>
    <li>Using Recobundles: The process has been published as a
        <a href="https://github.com/scilus/ismrm_2015_tractography_challenge_scoring" target="_blank">standalone Github version</a>,
        which can be used with the ground truth data to run, in one single command line, both the segmentation using all the
        appropriate Recobundles parameters and the computation of the metrics. Results are saved as a json file. Open this
        file in your favorite text editor to visualize the results. This code has been updated to python 3 as of 2022.</li>
    <li>Using ROIs: information will come.</li>
</ul>

##### History: why we made two versions

<i>The process of segmenting bundles from a tractogram is not an easy task!</i>

The original goal imagined by the leading team of the Challenge was to evaluate all submissions using ROI segmentation. However, during the initial evaluation phase, it became evident that the ROIs would be very difficult to create in this dataset simulating real-world conditions. For example, the classical approach uses masks of the endpoints of ground truth bundles to determine if streamlines are valid connections. However, with that data, endpoints masks being only 1 voxel thick and did not suffice to recover streamlines in most cases. It was evident that the manual creation of ROIs that would work well, even considering the big variability amongst submission, would be very time-consuming. The team had a close deadline to be able to present their result at the Diffusion Study Group Worshop, and the choice that was made was to use Recobundles, a novel bundle segmentation tool at the time. That choice offered a quick way to obtain acceptable results, enough to lead to a good analysis of submissions, providing insightful conclusions of the challenge, published in the <a href="https://www.nature.com/articles/s41467-017-01285-x?report=reader" target="_blank">2017 paper</a>.

In 2022 however, it became clear that the ISMRM 2015 Challenge was still very much used by the tractography community. A careful examination of the Recobundles results on the initial submissions led our team to decide to tackle the difficult task of manual creating ROIs that would allow a more precise and refined segmentation of the bundles.

### 2. Metrics

See the <a href="/tractometer/the_metrics">Tractometer's description of the metrics</a>.
