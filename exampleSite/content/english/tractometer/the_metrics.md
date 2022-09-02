---
title: "The Tractometer"
subtitle: "Metrics Description"
# meta description
description: "This is meta description"
draft: false

---

<a href="/images/ismrm2015/vb_cst_left.png">
    <figure style="float:right">
        <img src="/images/ismrm2015/vb_cst_left.png" width="300px">
        <figcaption>The groundtruth left CST bundle in red, and <br> the left CST extracted
    from one submission in blue.</figcaption>
    </figure>
</a>

No matter the bundle segmentation technique (bundles may be segmented using Recobundles or with regions of interest), here are the bundle metrics that may be measured to compare a recovered bundle with its associated ground truth.

### Global connectivity metrics definitions

Global connectivity metrics were used. All definitions and description are given in the Cote et  al. <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract" target="_blank"> Tractometer </a> paper. We detail them here, updating them in the context of the relaxed scoring technique.

#### Valid Bundles (VB)

The number of valid bundles that were correctly reconstructed in the contestant's submission and that exist in the groundtruth data.

####  Valid connections (VC)

The percentage of streamlines that were part of the Valid Bundles.

<a href="/images/ismrm2015/ib_uf_ilf_left.png">
    <figure style="float:right">
        <img src="/images/ismrm2015/ib_uf_ilf_left.png" width="300px">
        <figcaption>IB: The groundtruth left UF (blue), groundtruth <br> left ILF (pink), and an invalid
                 bundle going <br> from the start of the UF to the end of the ILF <br> in green.
                 This bundle is invalid, and the tracking <br> algorithm 'merged' both bundles.</figcaption>
    </figure>
</a>

#### Invalid Bundles (IB)

The number of bundles that seemed realistic but were not matched to a known groundtruth bundle. Those are bundles that can be extracted from the submitted dataset, but do not match any existing bundle.

#### Invalid connections (IC)

The percentage of streamlines that were part of the Invalid Bundles.



<a href="/images/ismrm2015/nc_subsampled.png">
    <figure style="float:right">
        <img src="/images/ismrm2015/nc_subsampled.png" width="300px">
        <figcaption>NC: A subset of NC extracted from a submission. Notice
                 how most of them are very short and do not seem to fit with a
                 realistic bundle.</figcaption>
    </figure>
</a>

#### No connection (NC)

The percentage of streamlines that were not assigned to VC or IC. They normally are very short streamlines, or streamlines that are alone in their shape and position, meaning that when clustered, they still are singletons.


** Note that, in the classical Tractometer technique, there was another metric called <i>Valid connections through a wrong path (VCWP)</i>. Since the updated technique doesn't rely on masks to classify streamlines, this category cannot be defined.  Instead, those streamlines are normally assigned to one IB that reaches both endpoints but have a shape that is too different from the groundtruth bundle.

### Fidelity metrics definitions

<a href="/images/ismrm2015/ol_or_diagram.png">
    <figure style="float:right">
        <img src="/images/ismrm2015/ol_or_diagram.png" width="400px">
        <figcaption>A (red outline) is the discretization of the groundtruth bundle,
                 B (blue outline) is the discretization of the corresponding VB.
                 Overlap is the intersection of A and B over the volume of A,
                 Overreach is B excluding A, over the volume of A.</figcaption>
    </figure>
</a>

Additionnal metrics were implemented for the challenge evaluation. The so-called <b>Fidelity metrics</b> aim to give a general  overview of the coverage of VB over their groundtruth counterparts. This aims  to complement the global connectivity metrics, since a submission can find a specific valid bundle, but have a very poor coverage, since it may have found only a few streamlines to represent that bundle.

#### Bundle overlap (OL)

Proportion of the voxels within the volume of a ground truth bundle that is traversed by at least one valid streamline associated with the bundle. This value shows how well the tractography result recovers the original volume of the bundle.

#### Bundle overreach (ORn)

Fraction of voxels outside the volume of a ground truth bundle that is traversed  by at least one valid streamline associated with the bundle over the total number of voxels within  the  ground  truth  bundle.  This  value  shows  how  much  the  valid  connections  extend beyond the ground truth bundle volume.

We distinguish two possible computations. ORn = |B\A| / |A|  and OR = |B \ A| / |B|. The second version (OR) is not used anymore, except during the computation of the f1 score (see below). We prefer the signification of the ORn: if we score two bundles that each have two voxels of |B\A|, they will both have the same ORn score.

#### f1 score / DICE score

We can compute the DICE score of the bundle. This is actually equivalent to the f1-score, which can be computed in many ways.
The first definition is F1 = TP / (TP + (FP + FN)/2), where TP, FP, FN are true positives, false positives and false negatives scores,  in voxels. We can also show that this is equivalent to F1 = 2 * (precision * recall) / (precision + recall), where recall is the overlap score, and precision = (1 - OR), where OR is the overreach score (using OR, not ORn!).


### Angular error scores

#### Local Angular Error

The mean voxel-wise angular error between the main local tractogram fiber directions and the respective ground truth fiber directions. This score is not supported anymore, although it allowed interesting insights. Future work could include adding this score back.

 [comment]: <> Missing directions are penalized with the maximum 90 degree error.
Values are split in 2 different categories: voxels containing 1 fiber population, and voxels with crossing fiber populations.


EMMA: SI ON VEUT FAIRE CA BEAU:

{{< faq "Overlap" >}}
[TractoFlow](https://github.com/scilus/tractoflow) is our recommended processing pipeline, starting from raw DWI up to the generation of whole brain tractograms. It is robust, efficient and fully reproducible, leveraging the [Nextflow](https://www.nextflow.io/) pipeline engine and container systems such as [Singularity](https://www.sylabs.io/singularity/) or [Docker](https://www.docker.com/).
{{</ faq >}}
