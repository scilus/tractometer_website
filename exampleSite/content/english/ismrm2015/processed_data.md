
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "An example of processed data"
# meta description
description: "This is meta description"
draft: false
---


We offer here examples of tractograms created on carefully preprocessed data, as discussed in Renauld2023. The preprocessing choices were made *after* the publication of the <a href="/ismrm2015/references">2017 paper</a>, with knowledge available from the analysis of the results of the initial submissions. For instance, this could be used as training set in a machine learning experiment, to avoid training on the ground truth data. 

**How to cite**: Please visit the <a href="/ismrm2015/references">References</a> page to cite us if you use this data. A paper (Renauld2023) is in process of being published.

### Preprocessing steps

The general preprocessing steps were the default Tractoflow pipeline. See the description <a href="https://tractoflow-documentation.readthedocs.io/en/latest/pipeline/steps.html">in the Tractoflow documentation</a>. Data was run with an adapted script based on version 2.3.0. In summary:

- DWI: Second timepoint of the DWI was extracted, named rev_b0 and added to the input data to allow using the topup step. Preprocessing steps were: Brain extraction, DWI denoising, Eddy/Topup, N4, Cropping, Normalization, Resampling, Extraction of fODF shells, Computation of fODF metrics.
- T1: Denoising, N4, Resampling, Brain extraction, Croping, Registration on the DWI, Segmentation of tracking/seeding maps.
- Tractography: We used seeding from either the WM mask (npv 10) or the interface mask (npv 60), and tracking with both local tracking and PFT tracking algorithms.
- Post-processing: We filtered streamlines based on length (20-200mm) and on detection of loops using scilpy's scripts.


### Results

<a href="https://scil.usherbrooke.ca/ismrm2015/withReversed_tractoflow_output_2022-12-20_submittedNature.zip">The processed data can be downloaded here</a>.

We verified data quality by scoring the three tractograms with the ROI-based scoring system (Renauld2023), with previously unseen results.

<a href="/results_ismrm/example_of_processed_data/withReversed_scoring_2022/Results_WithReversed.xlsx">
    <figure style="float:right">
        <img src="/results_ismrm/example_of_processed_data/withReversed_scoring_2022/Results_WithReversed.jpg" width="90%">
        <figcaption style="text-align:center">Results of the ROI-based scoring on the withReversed processed data. Click on the image to download as an excel file.</figcaption>
    </figure>
</a>
