function [pointcloud1,pointcloud2] = split(pc_point,AABB_para)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
xyz_max_min=[AABB_para(2)-AABB_para(1),AABB_para(4)-AABB_para(3),AABB_para(6)-AABB_para(5)];
[value,index]=max(xyz_max_min);

splitvalue=(AABB_para(2*index)+AABB_para(2*index-1))/2;
m=size(pc_point);
pointcloud1=[];
pointcloud2=[];
for i=1:m(2)
    if pc_point(index,i)>splitvalue
        pointcloud2=[pointcloud2 pc_point(:,i)];
    else
        pointcloud1=[pointcloud1 pc_point(:,i)];
    end
end


end

