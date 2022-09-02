---
title: "The ISMRM 2015 Tractography Challenge"
subtitle: "References"
# meta description
description: "This is meta description"
draft: false
---


For references on the Tractometer, see the <a href="/tractometer/references">Tractometer references page</a> for additional references to cite.

### Main ISMRM 2015 challenge papers

<ul>
    <li> Maier-Hein, Klaus H., et al. "<a href="https://www.nature.com/articles/s41467-017-01285-x?report=reader" target="_blank">
      The challenge of mapping the human connectome based on diffusion tractography.</a>" Nature communications 8.1 (2017): 1-13.</li>
    <li> The preprint version of the paper is available on <a href="http://www.biorxiv.org/content/early/2016/11/21/084137" target="_blank">BioRxiv</a>.</li>
</ul>

Supplementary materials:

<ul>
    <li> Maier-Hein, K. H. <i>et al</i>. Tractography Challenge ISMRM 2015 Data.
      <a href="https://doi.org/10.5281/zenodo.572345"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.572345.svg" alt="DOI"></a></li>
    <li> Maier-Hein, K. H. <i>et al</i>. Tractography Challenge ISMRM 2015 High-resolution Data.
      <a href="https://doi.org/10.5281/zenodo.579933"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.579933.svg" alt="DOI"></a></li>
    <li> Houde, J.-C <i>et al</i>. Code of the scoring system for the ISMRM 2015 Tractography Challenge.
      <a href="https://doi.org/10.5281/zenodo.810130"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.810130.svg" alt="DOI"></a></li>
    <li> Maier-Hein, K. H. <i>et al</i>. Tractography Challenge ISMRM 2015 Videos.
      <a href="https://doi.org/10.5281/zenodo.580067"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.580067.svg" alt="DOI"></a></li>
    <li> Maier-Hein, K. H. <i>et al</i>. Tractography Challenge ISMRM 2015 Submissions.
      <a href="https://doi.org/10.5281/zenodo.840086"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.840086.svg" alt="DOI"></a></li>
</ul>


** The paper mentions the standalone scoring tool. See the <a href="tractometer/references">references page</a> for links and information.

### Original references

For the sake of prosperity, we also leave here the main conclusions that were discussed during the challenge in 2015.

<ul>
    <li><a href="{% static 'papers/challenge_webinar_presentation.pdf' %}">Presentation done during the 2015-04-09 webinar</a></li>
    <li><a href="{{ DOWNLOAD_URL }}downloads/ismrm_presentation/Challenge_ResultTractometer_updated_for_pdf_generation.pdf">
  The results presentation document</a> </li>
</ul>

The last hour of the <i>Diffusion Study Group</i> of the ISMRM 2015 was dedicated to a discussion and debate on the open questions of tractography. Some of the main insights that were presented included:<

<ul>
    <li> Generating streamlines that are perfectly voxel-aligned to the ground-truth anatomy is really challenging, in part because of the artefacts correction process. These corrections almost always add some shift with respect to the underlying anatomy.  </li>
    <li> The previous point can have a huge impact in a pipeline that registers multiple subjects to a common template, for example for group studies. </li>
    <li> Scores are much better and more realistic when using a bundle recognition technique, instead of the classical Tractometer technique, which is based on endpoints. </li>
    <li> Most teams found 23 of 25 Valid Bundles, at the cost of generating multiple Invalid Bundles.  </li>
    <li> Only one submission found the 25 Valid Bundles. </li>
    <li> The most difficult bundles were the Anterior Commissure and the Posterior Commissure. </li>
    <li> The main differences between pipelines are seen in the Invalid connections and the "No connections" (streamlines not connecting 2 regions).  </li>
    <li> There needs to be a unified tractography format, to avoid potential interaction and interpretation problems. </li>
  </ul>
