clear all;
close all;
clc;
warning off;

pc = pcread('rabbit.pcd');
pc=pcdownsample(pc,'random',0.3);       %0.3倍降采样

pc_point = pc.Location';                %得到点云数据
scatter3(pc_point(1,:),pc_point(2,:),pc_point(3,:),'r')
hold on
bvhmodel=buildTree(pc_point,128);
plotBVH(bvhmodel,1)

