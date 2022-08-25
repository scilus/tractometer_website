---
title: "Our tools"
subtitle: ""
# meta description
description: "This is meta description"
draft: false
---


{{< faq "Tractoflow" >}}
[TractoFlow](https://github.com/scilus/tractoflow) is our recommended processing pipeline, starting from raw DWI up to the generation of whole brain tractograms. It is robust, efficient and fully reproducible, leveraging the [Nextflow](https://www.nextflow.io/) pipeline engine and container systems such as [Singularity](https://www.sylabs.io/singularity/) or [Docker](https://www.docker.com/).
{{</ faq >}}

{{< faq "Scilpy" >}}
[Scilpy](https://github.com/scilus/scilpy/) is a lightweight Diffusion Imaging processing library developed for the needs of members and collaborators of the SCIL. It mainly contains wrappers for [DIPY](http://www.dipy.org/) functionalities, as well as tools not already integrated into Dipy.
{{</ faq >}}

{{< faq "Containers" >}}
The SCIL distributes a few containers that can be used to run the [TractoFlow](https://github.com/scilus/tractoflow) pipeline, as well as easily interact with various diffusion MRI focused tools. See the [containers list](https://scil.usherbrooke.ca/pages/containers/) for downloads.
{{</ faq >}}

{{< faq "MI-Brain" >}}
The SCIL has contributed to, and highly recommends, [MI-Brain](https://github.com/imeka/mi-brain) as a visualization and interaction tool for Diffusion MRI and neuroimaging datasets.
{{</ faq >}}

{{< faq "Tractometer" >}}
The [Tractometer](http://www.tractometer.org/) is our online evaluation system for tractography. It has been used in various challenges. Code of the ISMRM 2015 tractography challenge can be seen [here](https://github.com/scilus/ismrm_2015_tractography_challenge_scoring).
{{</ faq >}}
