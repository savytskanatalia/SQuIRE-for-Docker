# SQuIRE-for-Docker
Dockerfile for running SQuIRE (Software for Quantifying Interspersed Repeat Expression, by @wyang17) in Docker. 

Description of SQuIRE can be found in its authors` publication and on a GitHub page:
https://www.biorxiv.org/content/10.1101/313999v1
https://github.com/wyang17/SQuIRE


This image is using miniconda base image and allows installing prerequisits according to installation recipe for SQuIRE.

To build image:

```
docker build - < Dockerfile -t $TAGOFYOURCHOICE
```

To mount container:
```
docker run -it -v /directory/of/your/choice:/data $TAGOFYOURCHOICE
```

When container is mounted, it activates automatically conda environment for SQuIRE.
To run SQuIRE within this container you need to access directory with squire and run the scripts from it!
Functionality is not fully tested yet!


