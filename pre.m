%% pre是预测函数
function [ y ] = pre( x )
%PRE 此处显示有关此函数的摘要
%   此处显示详细说明
global v w yam cta;

        a = x*v; % 隐藏层输入
        b = f(a, yam); % 隐藏层输出

        beta = b*w; % 输出层输入
        y = f(beta, cta); % 输出层输出

end
