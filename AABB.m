function [out] = AABB(pc_point)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
m=size(pc_point);
xmin=inf;
ymin=inf;
zmin=inf;
xmax=-inf;
ymax=-inf;
zmax=-inf;
for i=1:m(2)
    xyz=pc_point(:,i);
    x=xyz(1);
    y=xyz(2);
    z=xyz(3);
    if x>xmax
        xmax=x;
    end
    if x<xmin
        xmin=x;
    end
    
    if y>ymax
        ymax=y;
    end
    if y<ymin
        ymin=y;
    end
    
    if z>zmax
        zmax=z;
    end
    if z<zmin
        zmin=z;
    end   
end

out=[xmin xmax ymin ymax zmin zmax];
end

