# PG-framework

## Introduction
This is a perceptual grouping framework that organizes image edges into meaningful structures.

If you use the toolbox, we appreciate it if you cite our paper:

@inproceedings{DBLP:conf/cvpr/QiSXZHLG15,
  author    = {Yonggang Qi and
               Yi{-}Zhe Song and
               Tao Xiang and
               Honggang Zhang and
               Timothy M. Hospedales and
               Yi Li and
               Jun Guo},
  title     = {Making better use of edges via perceptual grouping},
  booktitle = {{IEEE} Conference on Computer Vision and Pattern Recognition, {CVPR}
               2015, Boston, MA, USA, June 7-12, 2015},
  pages     = {1856--1865},
  year      = {2015}}

## System Requirements

- Tested on Matlab R2013b for 64-bit, Ubuntu OS. 
- Note that there is a link error to gco toolbox on Matlab R2014 or above, so please make sure run this code on Matlab R2013.

---------------------------------------------------------------------------

## Installation

- This package should contain the following files:
   - Main code 
        - PGDemo.m                                  : The Demo usage of perceptual edge grouping.
        - matlab\*.m                                : The Matlab files of implementation of the corresponding paper mentioned in Introduction.
        
   - Third party toolbox 
        - EdgeDetector\                             : StructuredEdge detector for edge detection. 
        - Edge Linking and Line Segment Fitting\    : Edge cutting toolbox for obtaining segments on edge map.
        - piotr_toolbox_V3.02\                      : Piotr's Matlab toolbox.
        - gco-v3.0\                                 : software for energy minimization with graph cuts
        
   - Data 
        - images/*.jpg                            : Exemple input pictures.

- Start Matlab and add all the above files to Path.

---------------------------------------------------------------------------

## Getting started

- Make sure to carefully follow the installation instructions above.
- Please see "PGDemo.m" to run demo and get basic usage information.

---------------------------------------------------------------------------

## History

Version 1.0 (30/05/2016)
- initial version 
