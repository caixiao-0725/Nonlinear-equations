function counter_example_1
% function that is Gateaux differentiable but not continuous
% data = 2023/9/18

x = -1:0.03:1;
y = -1:0.03:1;
[X,Y] = meshgrid(x,y);
Z = (X.^3.*Y)./(X.^8+Y.^2);
figure(1)
mesh(X,Y,Z)
end

