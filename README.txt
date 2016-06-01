+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
|                                                                       |
|    Making Better Use of Edges via Perceptual Grouping Toolbox V1.0    |
|    Yonggang Qi (Email: qiyg at bupt dot edu dot cn)                   |
|                                                                       |
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

0. Introduction
This is a perceptual grouping framework that organizes image edges into meaningful structures.

If you use the toolbox, we appreciate it if you cite our paper:
@inproceedings{QiCVPR2015,
  author    = {Yonggang Qi, Yi-Zhe Song, Tao Xiang, Honggang Zhang, Timothy Hospedales, Yi Li and Jun Guo},
  title     = {Making Better Use of Edges via Perceptual Grouping},
  booktitle = {CVPR},
  year      = {2015},
}
---------------------------------------------------------------------------

1. System Requirements

- Tested on Matlab R2013b for 64-bit, Ubuntu OS. 
- Note that there is a link error to gco toolbox on Matlab R2014 or above, so please run this code on Matlab R2013.

---------------------------------------------------------------------------

2. Installation

- This package should contain the following files:
    ## Main code ##
        PGDemo.m                                  : The Demo for perceptual edge grouping.
        matlab\*.m                                : The Matlab files of implementation of the corresponding paper mentioned in Introduction.
        
    ## Third party toolbox ##
        EdgeDetector\                             : StructuredEdge detector for edge detection. (You need to re-compile the .cpp files by following the readme file in this folder)
        Edge Linking and Line Segment Fitting\*.m : Edge cutting toolbox for obtaining segments on edge map.
        piotr_toolbox_V3.02\                      : Piotr's Matlab toolbox.
        gco-v3.0\                                 : software for energy minimization with graph cuts
        
    ## Data ##
        ./images/*.jpg                            : Exemple input pictures.

- Start Matlab and add all the above files to Path.

---------------------------------------------------------------------------

3. Getting started

- Make sure to carefully follow the installation instructions above.
- Please see "PGDemo.m" to run demo and get basic usage information.

---------------------------------------------------------------------------

4. History

Version 1.0 (30/05/2016)
- initial version 
