function fixed_point_iteration_1D
% general fixed point iteration x_k1 = g(x_k)
% data = 2023/9/4
% author = Cheng Xiao
    % G1和G2分别是两个迭代函数，x0是初始值
    G = @G2;
    x0 = 1;
    [X Err_norm] = fixed_point_iter(G, x0);

end

function [X Err_norm] = fixed_point_iter(G, x0)
    KMAX = 20;
    TOL = 1e-8;
    err_norm = 1;
    xk=x0;
    X=[];
    Err_norm=[];

    k=1;
    fprintf('***************fixed point iterate history***************\n\n');
    fprintf('%d: x = %10.8f \n',k,xk);
    while k<=KMAX && err_norm>TOL
        xk1 = G(xk);
        err = xk1-xk;
        err_norm = norm(err,Inf);
        fprintf('%d: x = %10.8f  error_norm = %10.8f \n',k+1,xk,err_norm);
        X=[X xk];
        Err_norm=[Err_norm err_norm];
        xk = xk1;
        k = k+1;
    end

end

function y = G1(x)
    y = log(2+sin(x));
end

function y = G2(x)
    y = x+exp(x)-2-sin(x);
end