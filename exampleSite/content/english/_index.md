---
####################### Banner #########################
banner:
  title : "Tractometer"
  image : "images/logo/tractometer_banner.PNG"
  content : ""

---

### Description

The <i>Tractometer</i> is a tractography evaluation tool. It is the combination of:

- A <a href="/tractometer/bundle_segmentation/">choice of bundle segmentation technique</a> (ex, using ROIs or using Recobundles).
- A <a href="/tractometer/the_metrics/">set of chosen metrics</a> comparing the recovered bundles with "ground truth" bundles.

<br>

### Usage

The <i> Tractometer </i> can highlight limits of tractography algorithms and contribute to elucidating the open questions in diffusion MRI fiber tracking processing pipelines : from raw data to connectivity analysis. It is used to evaluate the end effects on fiber tracts of various:

- acquisition parameters & artefacts (b-value, number of directions, denoising or not, averaging or not)
- local estimation & modeling techniques (tensor, q-ball, spherical deconvolution, spherical wavelets, compartment models)
- tractography parameters (masking, seeding, stopping criteria)
- tractography algorithms (deterministic, probabilistic, geodesics, global).

<br><br>

<img src="/images/logo/main_page_sub_banner.PNG" style="display:block; margin-left: auto; margin-right: auto; width: 100%;" >

<br><br>

### Known projects using the Tractometer

[comment]: <> (Previous link was <i><a href="http://www.lnao.fr/spip.php?rubrique79">FiberCup</a></i>. Broken link. Did not find update website.)

1. (2012) The first set of experiments used to produce results for the Tractometer (presented at MICCAI 2012) were based on a revisited <i><a href="/fibercup/home">FiberCup</a></i> analysis. It used ROIs to segment streamlines into bundles and score them based on some metrics. **Find out more in the Fibercup tab!**

2. (2013) The <i>Tractometer</i> was also used to generate results and evaluate the submissions to the <a href="http://hardi.epfl.ch/static/events/2013_ISBI/index.html">2013 ISBI Hardi reconstruction challenge</a>.

3. (2015) The <i>Tractometer</i> was used to score the <a href="/ismrm2015/home">ISMRM 2015 tractography challenge</a>. ROI segmentation posed as problematic and a new segmentation process using <a href="https://dipy.org/documentation/1.2.0./interfaces/bundle_segmentation_flow/">Recobundles</a> was proposed. Metrics definitions were also updated. Very interesting <a href="/ismrm2015/results">results</a> were presented in the talk that was given during the <i>Diffusion Study Group</i> session at ISMRM 2015 and led to a strong paper. At the time of writing these lines (2022.08), it already had more than 800 citations. In 2022, a new segmentation process using ROI segmentation was suggested for more stable results. **Find out more in the ISMRM2015 tab!**

The current goal for the <i>Tractometer</i> is to make it easier for people to submit new phantoms, datasets, tractograms and tractography methods so that better insights can be gained on the current trends.

<br>

### News

- (2022-11-21) An update of the ISMRM 2015 Tractography Challenge has been submitted for peer-review. Meanwhile, the website has already been updated. Find new data, new scores, new segmentation parameters in the <a href="/ismrm2015/home">ISMRM 2015 tractography challenge tab</a>.

- (2022-09-08) The new website should now be available again. If you find any broken links and others bugs, don't hesitate to contact us. Amongst other, many changes were made in the <a href="/ismrm2015/home">ISMRM 2015 Tractography Challenge tab</a>, visit its home page for more details.

- (2022-08-09) The website is being refactored. ISMRM 2015 results will now be in the format of a downloadable file instead of a dynamic table. Data will be available again soon. Meanwhile, see the <a href="/tractometer/contact_and_support">Contact and Support</a> section if you need anything.

- (2017-05-15) The scoring system used in the Challenge is now available. See the <a href="/ismrm2015/tools">tools page</a>.

<br><br>