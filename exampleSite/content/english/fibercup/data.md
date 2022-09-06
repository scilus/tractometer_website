---
title: "The Fibercup"
subtitle: "Data"
# meta description
description: "This is meta description"
draft: false
---

You may look the <a href="https://www.nitrc.org/frs/shownotes.php?release_id=2341">NITRC page </a> for a complete list of data.

We also provide you with preformated data. The FiberCup dataset consists of 2 acquisitions, each acquired at 3 different b-values. There also is an averaged acquisition, which consists of the average of both acquisitions. In the results section, the first acquisition is represented by a name starting by <b>Acquisition #1</b>, the second one by a name starting with <b>Acquisition #2</b>, and the averaged one, by <b>Acquisition averaged</b>.

The acquisitions are available in the Nifti format. Each image consists of a b=0 image, followed by the images representing each acquisition direction. The gradient directions file is also available. The same gradient directions were used for each acquisition. The first direction in the file is <b>(0, 0, 0)</b>, which corresponds to the b=0 image as the first subvolume.

<b>IMPORTANT NOTE:</b> If you wish to publish a paper citing the Tractometer and using the FiberCup data, please make sure that you include the three references in the <a href="/fibercup/references">References</a> page.


### Acquisition #1:

- <a href="/data/fibercup/dwi/acq-1_b-650.nii.gz">64 directions, b-value: 650</a>
- <a href="/data/fibercup/dwi/acq-1_b-1500.nii.gz">64 directions, b-value: 1500</a>
- <a href="/data/fibercup/dwi/acq-1_b-2000.nii.gz">64 directions, b-value: 2000</a>

### Acquisition #2:

- <a href="/data/fibercup/dwi/acq-2_b-650.nii.gz">64 directions, b-value: 650</a>
- <a href="/data/fibercup/dwi/acq-2_b-1500.nii.gz">64 directions, b-value: 1500</a>
- <a href="/data/fibercup/dwi/acq-2_b-2000.nii.gz">64 directions, b-value: 2000</a>


### Averaged acquisition:

- <a href="/data/fibercup/dwi/acq-averaged_b-650.nii.gz">64 directions, b-value: 650</a>
- <a href="/data/fibercup/dwi/acq-averaged_b-1500.nii.gz">64 directions, b-value: 1500</a>
- <a href="/data/fibercup/dwi/acq-averaged_b-2000.nii.gz">64 directions, b-value: 2000</a>


### Seeding masks:

- <a href="/data/fibercup/masks/3x3x3/wm.nii.gz">White matter mask</a>

    [comment]: <> (- Volumes of interest mask: Unavailable, will be back up soon)


### Gradients directions:

- <a href="/data/fibercup/dwi/grad64.txt">Gradients file</a>


### All 3x3x3 data as one archive:

- <a href="/data/fibercup/all_data_3x3x3_no_rois_mask.zip">Zip file</a>
- <a href="/data/fibercup/all_data_3x3x3_no_rois_mask.tar.gz">Tar.gz archive</a>

