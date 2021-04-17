function [outputArg1,outputArg2] = plotBVH(bvh_model,only_leaf)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
if bvh_model.is_leaf==1
    para=bvh_model.para;
    plotAABB(para);
else   
    if only_leaf==0
        para=bvh_model.para;
        plotAABB(para);
    end
    plotBVH(bvh_model.left_node,only_leaf);
    plotBVH(bvh_model.right_node,only_leaf);
    
end

end

