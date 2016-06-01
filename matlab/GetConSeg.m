function  SegList  = GetConSeg( contour, fixed )
%GETLINESEG This function is used to extract continous line segments from
%binary contour map "contour".

%   Parameters
%   Input: contour(binary)
%   Output: SegList, which is a struct details position of every point for
%   each segment.

SegList = [];
count = 1;
% Get the initial edge list by function "edgelink"
[EdgeList, ~] = edgelink(contour, 10);
SegList = EdgeList;
if fixed 
% %% segments with fixed length
% Further cut the edge list into several smaller chains by means of number
% of pixels.
[~, NumList] = size(EdgeList);
for i = 1:NumList
    list = EdgeList{1,i};
    NumPixel = size(list,1);
    % Each line segment should contain 30 pixels. So each edge list
    % contains NumSubSeg subsegments. Note that the last one contains more
    % than 30 pixels.
    if floor(NumPixel/30)
        NumSubSeg = floor(NumPixel/30);
    else
        NumSubSeg = 1;
    end
    for j = 1:NumSubSeg
        ind = (j-1)*30 + 1;
        if j ~= NumSubSeg
            SegList{1,count} = list( ind:ind+29 , : );
            count = count+1;
        else
            SegList{1,count} = list( ind:end , : );
            count = count+1;
        end
    end
end

else
% drawedgelist(SegList, size(contour), 1, 'rand', 2);
%% segments in a manner that cut the curve at junctions
%   [~, NumList] = size(EdgeList);
%   for i=1:NumList
%       % acount for junction points
%       cntJP = 1;
%       % fetch one whole line from EdgeList as one initial line to cut into segments 
%       % at junction points;
%       list = EdgeList{1,i};
%       % Find endings and junctions in initial line
%       [RJ, CJ, re, ce] = findendsjunctions(list);
%       % count how many junction points there are
%       NumOfJunPnt = size(RJ,1);
%       % if exits junction point
%       if NumOfJunPnt 
%           for j=1:NumOfJunPnt 
%               % search in x axis with row position of junction point firstly
%               xs = find(RJ(j)==list(:,1));
%               % search in y axis with colomn position of junction point then
%               ys = find(CJ(j)==list(:,2));
%               for indx =1:size(xs)
%                   x = xs(indx);
%                   for indy = 1:size(ys)
%                       y = ys(indy);
%                       if x==y
%                           SegList{1,count} = list( cntJP:RJ(indx), : );
%                           cntJP = RJ(indx) + 1;
%                           count = count+1;
%                       end
%                   end
%               end
%           end
%       else
%           % no junction point here, then use whole line as a segment
%           SegList{1,count} = list;
%           count = count + 1;
%       end
%   end
% end

end

