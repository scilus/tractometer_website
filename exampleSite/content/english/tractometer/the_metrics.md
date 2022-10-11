---
title: "The Tractometer"
subtitle: "Metrics Description"
# meta description
description: "This is meta description"
draft: false

---

Once a tractogram has been separated into bundles (see the <a href="/tractometer/bundle_segmentation/">bundle segmentation process description here</a>), you may choose amongst a list of metrics to compare a recovered bundle with its associated ground truth bundle. To score a tractogram, you may use:

- <a href="https://github.com/scilus/scilpy/blob/master/scripts/scil_score_tractogram.py" target="_blank"> scil_score_tractogram.py</a>

In the specific case of the ISMRM 2015 Challenge, a <a href="/ismrm2015/tools/">standalone tool</a> has been created.

### Global connectivity metrics definitions

All definitions and description are given in the Cote et  al. <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract" target="_blank"> Tractometer </a> paper. 

<a href="/images/ismrm2015/vb_ib_nc.png">
    <figure style="float:right">
        <img style="display: block; margin: 0 auto" src="/images/ismrm2015/vb_ib_nc.png" width="80%">
        <figcaption style="text-align:center">A) VB: The groundtruth left CST bundle in red, and the left CST extracted from one submission in blue. <br> B) IB: The groundtruth left UF (blue), groundtruth left ILF (pink), and an invalid bundle going from the start of the UF to the end of the ILF in green. <br> This bundle is invalid, and the tracking algorithm 'merged' both bundles. <br>C) NC: A subset of NC extracted from a submission. Notice how most of them are very short and do not seem to fit with a realistic bundle.</figcaption>
    </figure>
</a>

#### Valid Bundles (VB)

The number of valid bundles that were correctly reconstructed in the contestant's submission and that exist in the groundtruth data.

#### Invalid Bundles (IB)

The number of bundles that seemed realistic but were not matched to a known groundtruth bundle. Those are bundles that can be extracted from the submitted dataset, but do not match any existing bundle. 

*NOTE. This metric depends strongly on the segmentation process and must be used with great care. Grouping invalid streamlines together into invalid bundles may give great insights on pathways that are easier to (wrongly) track, as shown on figure above, from the ISMRM 2015 Tractography Challenge paper. However, we believe it should not be used as a score, i.e. as indicator of the quality of a tractogram.*

####  Valid streamlines (VS)

The percentage of streamlines that were part of valid dundles. 

*NOTE. This metric was previously called valid connections (VC). However, this may be misleading as it does not include exclusively streamlines reaching two regions of the cortex (connections from the connectivity point of view). It rather englobes any streamline included in the valid bundles, no matter their shape or quality, depending on the bundle segmentation process. As of 2022, we have modified this terminology.*

#### Invalid streamlines (IS)

The percentage of streamlines that were not part of valid bundles. 

*NOTE. We previously distinguished two categories of invalid streamlines; those that could be regrouped in an invalid bundle (previously IC), and others, that were typically very short streamlines or streamlines alone in their shape and position (previously NC). However, this depends very strongly on the bundle segmentation process. As of 2022, we now suggest a single category.*


### Fidelity metrics definitions

The fidelity metrics give a general overview of the coverage of VB over their groundtruth counterparts. This aims  to complement the global connectivity metrics, since a submission can find a specific valid bundle, but have a very poor coverage, since it may have found only a few streamlines to represent that bundle. 

<a href="/images/ismrm2015/ol_or_diagram.png">
    <figure style="float:right; width:100%">
        <img style="display:block; margin-left: auto; margin-right: auto; width: 250px;" 
             src="/images/ismrm2015/ol_or_diagram_small_orn.png">
        <figcaption style="text-align:center">A (red outline) is the discretization of the groundtruth bundle, B (blue outline) is the discretization of the corresponding VB. <br> Overlap is the intersection of A and B over the volume of A. <br> Overreach is B excluding A, over the volume of A.</figcaption>
    </figure>
</a>

#### True / false positives / negatives, Precision

In the figure above, 
- TP = |A &#x2229; B|
- FP = |B \ A|
- FN = |A \ B|
- TN = all other voxels
- Precision = TP/(TP+FP) = |B &#x2229; A| / |B|
- Specificity = TN / (TN + FP)

#### Bundle overlap (OL) = Recall = Sensitivity

Proportion of the voxels within the volume of a ground truth bundle that is traversed by at least one valid streamline associated with the bundle. This value shows how well the tractography result recovers the original volume of the bundle. This is also generally known as Recall and may be computed as TP/(TP+FN) = |B &#x2229; A| / |A|. 

#### Bundle overreach (ORn)

Fraction of voxels outside the volume of a ground truth bundle that is traversed by at least one valid streamline associated with the bundle over the total number of voxels within  the  ground  truth  bundle.  This  value  shows  how  much  the  recovered streamlines extend beyond the ground truth bundle volume. *NOTE. We distinguish two possible computations.* ORn = |B\A| / |A|  *and* OR = |B \ A| / |B| = 1 - Precision. *The second version (OR) is not used anymore. We prefer the signification of the ORn: if we score two bundles that each have two voxels wrong (FP), they will both have the same ORn score. In the original ISMRM 2015 paper, the ORn was used, although it was called OR.*

#### f1 score / DICE score

We can compute the DICE score of the bundle. This is actually equivalent to the f1-score, which can be computed in many ways. The first definition is F1 = TP / (TP + (FP + FN)/2). We can also show that this is equivalent to F1 = 2 * (precision * recall) / (precision + recall).

### Angular error scores

The mean voxel-wise angular error between the main local tractogram fiber directions and the respective ground truth fiber directions. This score is not supported anymore, although it allowed interesting insights. Future work could include adding this score back.

 [comment]: <> (Missing directions are penalized with the maximum 90 degree error.)
 [comment]: <> (Values are split in 2 different categories: voxels containing 1 fiber population, and voxels with crossing fiber populations.)
