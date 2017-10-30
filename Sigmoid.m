%% 神经元激活函数
function [ y ] = Sigmoid( x )
%SIGMOID 作为激活函数
%   将较大范围内变化的输入值挤压到（0，1）输出值范围内

y = 1/(1+exp(-x));

end
