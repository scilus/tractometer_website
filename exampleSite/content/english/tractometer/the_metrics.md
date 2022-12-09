---
title: "The Tractometer"
subtitle: "Metrics Description"
# meta description
description: "This is meta description"
draft: false

---

Once a tractogram has been separated into bundles (see the <a href="/tractometer/bundle_segmentation/">bundle segmentation process description here</a>), you may choose amongst a list of metrics to compare a recovered bundle with its associated ground truth bundle. To score a tractogram, you may use:

- <a href="https://github.com/scilus/scilpy/blob/master/scripts/scil_score_bundles.py" target="_blank"> scil_score_bundles.py</a>

You can also use the script below to perform both ROI-segmentation and scoring in one step:

- <a href="https://github.com/scilus/scilpy/blob/master/scripts/scil_score_tractogram.py" target="_blank"> scil_score_tractogram.py</a>

** In the specific case of the ISMRM 2015 Challenge, a <a href="/ismrm2015/tools/">standalone tool</a> has been created for the both the Recobundles + scoring steps.


### Global connectivity metrics definitions

All definitions and description are given in [1].

- **Valid Bundles (VB)**: The number of valid bundles that were correctly reconstructed in the contestant's submission and that exist in the groundtruth data.

- **Invalid Bundles (IB)**: The number of bundles that seemed realistic but were not matched to a known groundtruth bundle. Those are bundles that can be extracted from the submitted dataset, but do not match any existing bundle. 

  *NOTE. Grouping invalid streamlines together into invalid bundles may give great insights on pathways that are easier to (wrongly) track. However, this metric depends strongly on the segmentation process and must be used with great care. Ex: when using Quickbundles such as in [1], scores may be easily influence by the presence and shape of spurious streamlines and their level of similarity. We believe that it is unstable it should not be used as a score, i.e. as indicator of the quality of a tractogram.*

- **Valid streamlines (VS)**: The percentage of streamlines that were part of valid dundles. 

  *NOTE. This metric was previously called valid connections (VC). However, this may be misleading as it does not include exclusively streamlines reaching two regions of the cortex (connections from the connectivity point of view). It rather englobes any streamline included in the valid bundles, no matter their shape or quality, depending on the bundle segmentation process. As of 2022, we have modified this terminology.*

- **Invalid streamlines (IS)**: The percentage of streamlines that were not part of valid bundles. 

  *NOTE. We previously distinguished two categories of invalid streamlines; those that could be regrouped in an invalid bundle (previously IC), and others, that were typically very short streamlines or streamlines alone in their shape and position (previously NC). For the same reasons as above, as of 2022, we now suggest a single category without the terminology "connection".*

### Fidelity (i.e. bundle coverage)  metrics definitions

The fidelity metrics give a general overview of the coverage of VB over their groundtruth counterparts. This aims  to complement the global connectivity metrics, since a submission can find a specific valid bundle, but have a very poor coverage, since it may have found only a few streamlines to represent that bundle. 

In the figure below: 
- True positives (TP) = |A &#x2229; B|
- False positives (FP) = |B \ A|
- False negatives (FN) = |A \ B|
- True negative (TN) = all other voxels
- Precision = TP/(TP+FP) = |B &#x2229; A| / |B|
- Specificity = TN / (TN + FP)
- **Bundle overlap (OL)** (or Recall, or Sensitivity): Proportion of the voxels within the volume of a ground truth bundle that is traversed by at least one valid streamline associated with the bundle. This value shows how well the tractography result recovers the original volume of the bundle. This is also generally known as Recall and may be computed as TP/(TP+FN) = |B &#x2229; A| / |A|. 
- **Bundle overreach**: Fraction of voxels outside the volume of a ground truth bundle that is traversed by at least one valid streamline associated with the bundle over the total number of voxels within  the  ground  truth  bundle.  This  value  shows  how  much  the  recovered streamlines extend beyond the ground truth bundle volume. We distinguish two possible computations:
  - OR_gt = |B\A| / |A| (normalized by the ground truth volume)
  - OR_vs = |B \ A| / |B| = 1 - Precision (normalized by the recovered bundle's volume; the VS). 
  
  We prefer the signification of the OR_gt: if we score two bundles that each have two voxels wrong (FP), they will both have the same OR_gt score. In both [1] and [2], the OR_gt was used.
- **f1 score / DICE score**: This similarity score can be computed in many ways. The first definition is F1 = TP / (TP + (FP + FN)/2). We can also show that this is equivalent to F1 = 2 * (precision * recall) / (precision + recall).

<a href="/images/ismrm2015/ol_or_diagram.png">
    <figure style="float:right; width:100%">
        <img style="display:block; margin-left: auto; margin-right: auto; width: 250px;" 
             src="/images/ismrm2015/ol_or_diagram_small_orn.png">
        <figcaption style="text-align:center">A (red outline) is the discretization of the groundtruth bundle, B (blue outline) is the discretization of the corresponding VB. </figcaption>
    </figure>
</a>


### Angular error scores

The mean voxel-wise angular error between the main local tractogram fiber directions and the respective ground truth fiber directions. This score is not supported anymore, although it allowed interesting insights. Future work could include adding this score back.

 [comment]: <> (Missing directions are penalized with the maximum 90 degree error.)
 [comment]: <> (Values are split in 2 different categories: voxels containing 1 fiber population, and voxels with crossing fiber populations.)

### Ref

[1] Cote et  al. <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract" target="_blank"> Tractometer </a>.

[2] (Upcoming Renauld2022).