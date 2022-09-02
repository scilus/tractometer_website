---
####################### Banner #########################
banner:
  title : "Tractometer"
  image : "images/logo/tractometer_banner.PNG"
  content : ""

---

The <i>Tractometer</i> is a tractography evaluation tool. It is used to evaluate the end effects on fiber tracts of different :
    
<ul>
    <li>acquisition parameters & artefacts (b-value, number of directions, denoising or not, averaging or not)</li>
    <li>local estimation & modeling techniques (tensor, q-ball, spherical deconvolution, spherical wavelets, compartment models)</li>
    <li>tractography parameters (masking, seeding, stopping criteria)</li>
    <li>tractography algorithms (deterministic, probabilistic, geodesics, global).</li>
</ul>

The <i> Tractometer </i> can highlight limits of the algorithms and contribute to elucidating the open questions
  in diffusion MRI fiber tracking processing pipelines : from raw data to connectivity analysis.

The current goal for the <i>Tractometer</i> is to make it easier for people to submit new phantoms, datasets, tractograms and tractography methods so that better insights can be gained on the current trends.

<br> 

### News

<ul>
    <li><b>2022-08-09</b>: The website is being refactored. ISMRM 2015 results will now be in the format of a downloadable
        file instead of a dynamic table. Data will be available again soon. Meanwhile, see the page
         <a href="/support">Contact and Support</a> if you need anything.</li>
    <li><b>2017-05-15</b>: The scoring system used in the Challenge is now
          available. See the <a href="/ismrm_2015_challenge/tools">tools page</a>.</li>
</ul>

<br>

<img src="/images/logo/main_page_sub_banner.PNG" width="100%" class="center">

### History

[comment]: <> (Previous link was <i><a href="http://www.lnao.fr/spip.php?rubrique79">FiberCup</a></i>. Broken link. Did not find update website.)

1. The first set of experiments used to produce results for the Tractometer (presented at MICCAI 2012) were based on a revisited <i><a href="/original_fibercup">FiberCup</a></i> analysis. It used ROIs to segment streamlines into bundles and score them based on some metrics. **Find out more in the Fibercup tab!**

2. The <i>Tractometer</i> was also used to generate results and evaluate the submissions to the <a href="http://hardi.epfl.ch/static/events/2013_ISBI/index.html">2013 ISBI Hardi reconstruction challenge</a>.

3. More recently, the <i>Tractometer</i> was used to score the <a href="/ismrm_2015_challenge">ISMRM 2015 tractography challenge</a>. ROI segmentation posed as problematic and a new segmentation process using <a href="https://dipy.org/documentation/1.2.0./interfaces/bundle_segmentation_flow/">Recobundles</a> was proposed. Metrics definitions were also updated. Very interesting <a href="/ismrm_2015_challenge/results">results</a> were presented in the talk that was given during the <i>Diffusion Study Group</i> session at ISMRM 2015 and led to a strong paper. At the time of writing these lines (2022.08), it already had more than 800 citations.  **Find out more in the ISMRM2015 tab!**
