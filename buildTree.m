function [bvh_model] = buildTree(pc_point,min_pointcloud_size)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明
mn=size(pc_point);
if mn(2)>min_pointcloud_size
AABB_para=AABB(pc_point);
bvh_model.para=AABB_para;

[pc1,pc2]=split(pc_point,AABB_para);
bvh_model.left_node=buildTree(pc1,min_pointcloud_size);
bvh_model.right_node=buildTree(pc2,min_pointcloud_size);
bvh_model.is_leaf=0;
else
 AABB_para=AABB(pc_point);
 bvh_model.para=AABB_para;
 bvh_model.left_node=[];
 bvh_model.right_node=[];
 bvh_model.is_leaf=1;
end

end

