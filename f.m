%% f是神经元输出函数
function [ y ] = f( bet, cta )
%F 计算神经元输出
%   bet是神经元输入，cta是阈值

s = size(bet, 2);
if s~=size(cta)
    fprintf('函数f输入有误')
end

y = zeros(1, s);
for i = 1:s
    y(i) = Sigmoid(bet(i)-cta(i));
end
