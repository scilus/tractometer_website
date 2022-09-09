
---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: ""
# meta description
description: "This is meta description"
draft: false
---

The ISMRM 2015 Tractography Challenge seeked to evaluate and compare state-of-the-art tractography pipelines. The main bottleneck of tractography evaluation is the unavailability of groundtruths. We overcome this limitation with a new data generation process using <a href="http://docs.mitk.org/2014.10/org_mitk_views_fiberfoxview.html" target="_blank">
    Fiberfox</a>, which allows to create a groundtruth for scoring using the <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract"> Tractometer</a> online evaluation system.

The task of the challenge was to provide the best possible reconstruction of fiber pathways in a realistically simulated replication of a whole brain diffusion-weighted MR image with properties typical of a clinical acquisition. The contestants were expected to process the challenge dataset using their best processing pipeline, as if they were asked to process the dMRI data of a clinical patient to produce the best possible tractography result. There were no constraints on the processing steps or running time, as we only expected to receive the tractogram file.

The challenge is now closed. However, you can still download the data and work with it.

You can find the various sections here and in the submenu:
- <a href="/ismrm2015/dwi_data">Description and download of the **DWI data** that was offered at the time of the submission.</a>
- <a href="/ismrm2015/tractography_data">Description and download of the **bundles** that were used as ground truth to score submissions</a>.
- <a href="/ismrm2015/processed_data">Examples of **processed data**.</a>.
- <a href="/ismrm2015/results">**Results** of the scoring of all submissions</a>
- <a href="/ismrm2015/tools">Links to the standalone **tool**: score your own tractogram!</a>
- <a href="/ismrm2015/references">**References**</a>

<br>

### Organizing Committee

Peter Neher<sup>1</sup>, Jean-Christophe Houde<sup>2</sup>, 
Emmanuel Caruyer<sup>3</sup>, Alessandro Daducci<sup>2,4</sup>, 
Tim Dyrby<sup>5</sup>, Klaus Maier-Hein<sup>1</sup>, 
Bram Stieltjes<sup>6</sup>, Maxime Descoteaux<sup>2</sup> 

<sup>1</sup><a href="http://www.dkfz.de/en/mbi/research/MIC/index.html" target="_blank">Medical Image Computing Group (MIC)</a>, German Cancer Research Center (DKFZ)
<sup>2</sup><a href="http://scil.usherbrooke.ca/" target="_blank">Sherbrooke Connectivity Imaging Lab (SCIL)</a>, Université de Sherbrooke
<sup>3</sup><a href="https://www.irisa.fr/visages/" target="_blank">CNRS, IRISA, UMR 6074 VISAGES project-team</a>, Rennes, France
<sup>4</sup><a href="http://hardi.epfl.ch/" target="_blank">Signal Processing Lab (LTS5)</a>, Ecole Polytechnique Federale de Lausanne, Switzerland
<sup>5</sup><a href="http://dig.drcmr.dk/" target="_blank">Diffusion Imaging Group</a>, <a href="http://www.drcmr.dk" target="_blank">Danish Research Centre for Magnetic Resonance (DRCMR)</a>, Denmark
<sup>6</sup><a href="https://radiologie.unibas.ch/klinik/mitarbeitende/profil/profil/person/bram-stieltjes/" target="_blank">University Hospital Basel, Radiology & Nuclear Medicine Clinic</a>

### News

- (2022-09-08) An example of processed data has been added in the <a href="/ismrm2015/results">ISMRM 2015 tractography challenge results page</a>. A set of curated ground truth bundles has been added in the <a href="/ismrm2015/tractography_data">Tractography data page</a>, along with ROIs that can be used for segmentation during scoring (see the Tractometer's <a href="/tractometer/bundle_segmentation">Bundle segmentation page</a> for more explanation). The code to use them has been added to the <a href="/ismrm2015/tools">Tools page</a>.