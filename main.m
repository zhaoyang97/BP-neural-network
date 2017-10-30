%% 程序入口
clear all
input_data % 输入训练集
init_pamas % 进行训练

% 开始预测
for i = 1:size(X,1)
    p = pre(X(i,:));
    % x有p的概率为1
    fprintf('f( %s ) = round(%.4f) = %d\n', num2str(X(i,:)), p, round(p));
end

% 绘图
plot(result);
if size(X, 1)>=4
    legend(num2str(X(1,:)),num2str(X(2,:)),num2str(X(3,:)),num2str(X(4,:)));
end
title('异或');
xlabel('训练次数');
ylabel('为1的概率，即不为0的概率');
