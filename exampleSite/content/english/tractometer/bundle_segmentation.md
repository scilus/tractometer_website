

---
title: "Tractometer"
subtitle: "The bundle segmentation process"
# meta description
description: "This is meta description"
draft: false
---

### Choice 1: Using ROIs

The most intuitive method to automatically segment bundles is to ask an expert to define regions of interests (ROIs) for
each bundle. Ex:

<ul>
    <li>Endpoint ROI: The streamlines should start and finish in this mask.</li>
    <li>Head, tail: Similarly, the streamlines should have one extremity in the head and the other in the tail.</li>
    <li>Bundle envelopes / bundle masks: The streamlines should be entirely contained in the mask.</li>
    <li>Mendatory intermediate mask: The streamlines must at least thouch the mask in one point.</li>
    <li>Masks of forbidden passage: The streamlines cannot touch this mask at all.</li>
    <li>Etc.</li>
</ul>

However, even for an experimented expert, defining regions of interest large enough to cover variations in scored tractograms
but small enough to avoid englobing streamlines from another bundle is quite a time-consuming task, particularly when the
tractogram is based on a complex DWI data (ex, real human brain vs simpler phantoms).

Scilpy offers a list of filtering scripts, see for instance
<a href="https://github.com/scilus/scilpy/blob/master/scripts/scil_score_tractogram.py" target="_blank"> scil_score_tractogram.py</a>.

### Choice 2: Using Recobundles

Another choice is to associate each streamline to the most similar bundle in a list of reference bundles using
<a href="https://dipy.org/documentation/1.2.0./interfaces/bundle_segmentation_flow/" target="_blank"> Recobundles </a>. To accelerate the process, it is possible to first separate the streamlines in small groups of similar streamlines using
<a href="https://dipy.org/documentation/1.2.0./examples_built/segment_quickbundles/" target="_blank"> Quickbundles</a>. All streamlines from a group are associated to the same bundle. It is also possible to define a threshold on the similarity metric (the MDF). If no reference bundle is similar enough, the streamlines are categorized as false positives.


### Choices made in known projects

- The original Tractometer system as published in the <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract" target="_blank"> 2013 paper</a> used regions of interest (ROI) to segment bundles in the Fibercup dataset.

- The <a href="/ismrm_2015_challenge">ISMRM 2015 Tractography Challenge</a> results have originally been published
using Recobundles, but an updated version using ROIs is now offered (2022.08). Scoring data and scripts are available in the Challenge tab.
