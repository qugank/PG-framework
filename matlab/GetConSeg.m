function  SegList  = GetConSeg( contour )
%GETLINESEG This function is used to extract continous line segments from
%binary contour map "contour".

%   Parameters
%   Input: contour(binary)
%   Output: SegList, which is a struct details position of every point for
%   each segment.

SegList = [];
count = 1;
% Get the edge list by function "edgelink"
[EdgeList, ~] = edgelink(contour, 10);
SegList = EdgeList;

end

