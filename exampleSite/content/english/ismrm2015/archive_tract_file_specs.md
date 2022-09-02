
Tractography file formats all differ in their internal representation of streamlines. Therefore, we provide guidelines on the expected content for each accepted file format. Submitted results that do not conform to those guidelines will either be incorrectly processed and scored, or simply rejected by the scoring system.

You can validate the space used for your submission using the script provided below. For people using the VTK file format, you can also test it using <a href="http://mitk.org/wiki/DiffusionImaging#Downloads" target="_blank">MITK-Diffusion</a>.

### Validation script

You can download the script <a href="{{ DOWNLOAD_URL }}downloads/scripts/validate_tracts_space.py">here</a>.

To be able to run it, you will need a Python interpreter (either the system one, or using a prepackaged environment, like  <a href="https://store.continuum.io/cshop/anaconda/" target="_blank">Anaconda</a> or <a href="https://store.enthought.com/" target="_blank">Enthought Canopy</a>). Once installed, you will also need to install the following dependencies:
<ul>
    <li>Numpy (using "pip install numpy")</li>
    <li>NiBabel (using "pip install nibabel")</li>
    <li>TractConverter (using "pip install http://github.com/MarcCote/tractconverter/archive/master.zip")</li>
</ul>

Once everything is installed, you need to make sure the script is executable. To do so, call <blockquote>sudo chmod a+x validate_tracts_space.py</blockquote>. You can then use the script by calling <blockquote>python validate_tracts_space.py name_of_tracts_file</blockquote> You will then get a message specifying if we think your tracts are in the correct space. Please note that there is no warranty, even if the script says the points are in the correct space, that your tracts are correctly aligned with the underlying anatomy.

### Tracts format specification

The following table shows the details of the expected content for the 3 supported file formats.

##### Mrtrix (.tck)

We consider that points saved in a .tck file are defined with respect to a reference volume which is encoded using the RAS convention, since that is the default behavior of Mrtrix. This means that
<ul>
    <li>Points are saved in the "world space", i.e. they reside in the same volume as the image volume when its affine is considered.</li>
    <li>They respect the <b>Nifti voxel center definition</b> (see note at bottom).</li>
</ul>

##### Trackvis (.trk)

Various applications manage .trk files differently. To simplify matters, we expect to receive .trk files using the specification for version 2, as explained <a href="http://trackvis.org/docs/?subsect=fileformat" target="_blank">here</a>. Files should be loadable using <a href="http://nipy.org/nibabel/generated/nibabel.trackvis.html" target="_blank" style="color: blue; text-decoration: underline">NiBabel</a>.

 Note that the validation script will tell you if the specification is not followed.
<ul>
    <li>The affine in the file should be correctly set, so that tracts can be transformed to RAS space using the affine.</li>
    <li>TrackVis (the application) expects the tracts to be in "voxmm" space (see 
        <a href="http://nipy.org/nibabel/generated/nibabel.trackvis.write.html#nibabel.trackvis.write" target="_blank"
           style="color: blue; text-decoration: underline">the notes section</a>).
        We expect the file to be formatted as such.</li>
    <li>TrackVis (the application) considers the coordinate (0,0,0) to be the <b>corner</b> of the first voxel. To fit with the Nifti standard,
        we will shift all points to bring them to the normal interpretation of (0,0,0) being the center of the first voxel.</li>
</ul>

##### VTK (.vtk or .fib)

VTK files have no standard concerning the definition of the reference frame used to define the points. They simply store the points as they are given. They are normally stored in world space. However, depending on the underlying tool, they may be stored in a RAS or LPS space. Considering all those factors, we ask that
<ul>
    <li>Points are saved in "world space", i.e. they reside in the same volume as the image volume when its affine is considered.</li>
    <li>In your pipeline description, you specify in which reference (LPS or RAS) they were saved.
    <li>They respect the <b>Nifti voxel center definition</b> (see note at bottom).</li>
</ul>    

### Note on voxel center definition

In some cases, we use the expression "<b>Nifti voxel center definition"</b>. In the Nifti standard, the coordinate (0,0,0) maps to the center of the first voxel. This means that applying the affine transform to (0,0,0) will give you the coordinates in world space of the center of the first voxel.

What this implies is that, when converting world-space tracts to "voxel coordinates" by using the inverse of the affine transform, it is fully possible that some points map to coordinates between -0.5 and 0. They will do so because they are contained "below" the (0,0,0) point, which is the center of voxel.

For more information, see this <a href="http://nipy.org/nibabel/coordinate_systems.html" target="_blank">NiBabel explaination on coordinates systems</a>.
