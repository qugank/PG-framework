clear all; close all;
load modelBsds.mat;


% initialize parameters, you need to change the relative importance of
% gestalt principles here.
opt = initialopt;

% read input image
imgpath = './images/000706.jpg';
I = imread(imgpath);


% edge detection
[E,O]=edgesDetect(I,model); 
E=edgesNmsMex(E,O,2,0,1,4);

% get curve segments
I = E>0.1;
edges_fname = './edge.png';
imwrite(I, edges_fname, 'png');
SegList  = GetConSeg( I );

%% perceptual edge grouping

% obtain perceptual grouping result by graph-cuts
labels = GestaltGroupRsvm( SegList,opt.RelativeImp,opt.C);
% show grouping result
showGrouping(SegList,labels,edges_fname); 