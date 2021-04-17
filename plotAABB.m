function [] = plotAABB(para)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
line_width=1;
xmin=para(1);
xmax=para(2);
ymin=para(3);
ymax=para(4);
zmin=para(5);
zmax=para(6);

x=[xmin xmax];
y=[ymin ymin];
z=[zmin zmin];

plot3(x,y,z,'g','linewidth',line_width)
hold on
x=[xmin xmin];
y=[ymin ymax];
z=[zmin zmin];
plot3(x,y,z,'g','linewidth',line_width)
x=[xmin xmin];
y=[ymin ymin];
z=[zmin zmax];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmax xmin];
y=[ymax ymax];
z=[zmax zmax];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmax xmax];
y=[ymax ymin];
z=[zmax zmax];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmax xmax];
y=[ymax ymax];
z=[zmax zmin];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmin xmax];
y=[ymin ymin];
z=[zmax zmax];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmax xmax];
y=[ymin ymin];
z=[zmax zmin];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmax xmax];
y=[ymin ymax];
z=[zmin zmin];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmax xmin];
y=[ymax ymax];
z=[zmin zmin];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmin xmin];
y=[ymax ymax];
z=[zmin zmax];
plot3(x,y,z,'g','linewidth',line_width)

x=[xmin xmin];
y=[ymax ymin];
z=[zmax zmax];
plot3(x,y,z,'g','linewidth',line_width)
end

