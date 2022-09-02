
---
title: "The Fibercup"
subtitle: ""
# meta description
description: "This is meta description"
draft: false
---

Originally, the Tractometer evaluation was developed with the original Fibercup dataset in mind. All results produced with this version of the system (such as those published in <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract" target="_blank">Medical Image Analysis</a>) were based on this dataset.

This first generation of test runs and results provided us and the community with interesting insights into various aspects of the whole diffusion processing pipeline. For example, it was shown in our <a href="http://www.medicalimageanalysisjournal.com/article/S1361-8415(13)00047-9/abstract" target="_blank">MIA paper</a> that some processing pipeline configurations can yield up to 70% of invalid connections. As a reminder, Invalid Connections are streamlines that connect
  2 grey matter regions which are known not to be connected in reality. This is a huge number!

All those insights helped the community realize that diffusion processing pipelines need to correctly take this into account in the next generation of algorithms, in order to provide results that are meaningful and can be used in neuroscience analyses.

However, the original Fibercup dataset has begun showing its limitations. For instance, it is only 3 slices thick, so it is quite limited when trying to evaluate more complex 3D fibers configurations.

We still keep everything that is related to the Fibercup runs of the Tractometer online, to help people who may still use it. You can find the various sections here and in the submenu:
    <ul>
        <li><a href="/fibercup/data">Data description</a></li>
        <li><a href="/fibercup/results">Results</a></li>
        <li><a href="/fibercup/references">References related to the use of the Fibercup dataset</a></li>
    </ul>

  [comment]: <> style=center does not exist, this does the trick

<img style="display:block; margin-left: auto; margin-right: auto; width: 300px;" 
     src="/images/fibercup/ground_truth_revisited.png">
