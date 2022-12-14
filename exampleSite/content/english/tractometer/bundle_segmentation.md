

---
title: "Tractometer"
subtitle: "The bundle segmentation process"
# meta description
description: "This is meta description"
draft: false
---

The first step in scoring a tractogram is to group its streamlines into bundles. But **the bundle segmentation process is not an easy task!** When the task is performed by a human, he uses spatial information such as ending points, general trajectory, streamlines shape. To perform this automatically, a lot of information has to be given to the chosen software.  

You may define your own segmentation process and then use our tools to <a href="/tractometer/the_metrics/">score the results</a>. Or you may use our tools described below. We offer two choices of bundle segmentation.

### Choice 1: Using ROIs

The first technique uses regions of interests (ROIs) defined by an expert for each bundle. Many teams have proposed various tools for this task. You can use scripts offered by our lab in scilpy:

- <a href="https://github.com/scilus/scilpy/blob/master/scripts/scil_score_tractogram.py" target="_blank"> scil_score_tractogram.py</a>
- (upcoming) scil_segment_from_ROIs.py

Example of useful ROIs are:

- Endpoint ROIs: The streamlines should start and finish in this mask.
- Heads and tails: Similarly, the streamlines should have one extremity in the head and the other in the tail.
- Bundle envelopes / bundle masks: The streamlines should be entirely contained in the mask.
- Mendatory intermediate masks: The streamlines must at least thouch the mask in one point.
- Masks of forbidden passage: The streamlines cannot touch this mask at all.

However, even for an experimented expert, defining regions of interest large enough to cover variations in scored tractograms but small enough to avoid englobing streamlines from another bundle is quite a time-consuming task, particularly when the tractogram is based on a complex DWI data (ex, real human brain vs simpler phantoms).

<a href="/images/examples_ROI.png">
    <figure style="float:right">
        <img src="/images/examples_ROI.png" width="90%" style="display:block; margin-left: auto; margin-right: auto;">
        <figcaption style="text-align:center">Examples of endpoint ROIs. Examples C and D show two possible sets of ROIs for the same bundles, with a different degree of dilation. Ref: [Upcoming paper Renauld2022]. </figcaption>
    </figure>
</a>


### Choice 2: Using Recobundles

Another choice is to associate each streamline to the most similar bundle in a list of reference bundles using <a href="https://dipy.org/documentation/1.2.0./interfaces/bundle_segmentation_flow/" target="_blank"> Dipy's Recobundles</a>. To accelerate the process, it is possible to first separate the streamlines in small groups of similar streamlines using <a href="https://dipy.org/documentation/1.2.0./examples_built/segment_quickbundles/" target="_blank"> Quickbundles</a>. All streamlines from a group are associated to the same reference bundle. It is possible to define a threshold on the similarity metric (the MDF). If no reference bundle is similar enough, the streamlines are categorized as false positives. To use Recobundles, you may visit Dipy's website. To use Quickbundles, you may use: 

- <a href="https://github.com/scilus/scilpy/blob/master/scripts/scil_compute_qbx.py" target="_blank"> scil_compute_qbx.py</a>

In the specific case of the ISMRM 2015 Challenge, a <a href="/ismrm2015/tools/">standalone tool</a> has been created.

<br>

### Other choices

This page is certainly non-exhaustive. Other techniques exist. For instance, machine learning now offers new segmentation possibilities!

<br>

### Choices made in known projects using the Tractometer

- The original Tractometer system published in the <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract" target="_blank"> 2013 paper</a> used regions of interest (ROIs) to segment bundles in the Fibercup dataset.

- The <a href="/ismrm2015/home">ISMRM 2015 Tractography Challenge</a> results have originally been published using Recobundles, but an updated version using ROIs is now offered (2022.08). Scoring data and scripts are available in the Challenge tab.
