%% 训练神经网络

% note: 隐藏层神经元数可自定义！
% note: 训练次数很重要！！
% note: 在所有神经元值计算完成后才能更新连接权与阈值！！

% 在(0, 1)范围内随机初始化网络中的连接权和阈值
d = size(X, 2); % 输入层神经元个数
q = d+2; % 隐藏层神经元数
l = size(Y, 2); % 输出层神经元个数

global v w yam cta
v = rand(d, q); % 输入层到隐藏层连接权
w = rand(q, l); % 隐藏层到输出层连接权
yam = rand(1,q); % 隐藏层阈值
cta = rand(1,l); % 输出层阈值

global result % 保存训练集正确率
% 对v w yam cta进行训练
for time = 1: 10000 %训练次数
    for i = 1:size(X, 1) %遍历训练集中的每个样本
        % 每个样本为（x, y) 
        x = X(i, :); 
        y = Y(i, :);

        alpha = x*v; % 隐藏层输入
        b = f(alpha, yam); % 隐藏层输出

        bet = b*w; % 输出层输入
        y8 = f(bet, cta); % 输出层输出
        
        result(time, i) = y8;
        
        g = y8.*(1-y8).*(y-y8);
        deta_w = eta*b'*g; % 计算各个连接权和阈值的微分
        deta_cta = -eta*g;
         e = b.*(1-b).*(g*w');
        deta_yam = -eta*e;
        deta_v = eta*x'*e;   
        % 计算完成后同步更新。
        w = w + deta_w; % 更新w
        cta = cta + deta_cta; % 更新cta
        yam = yam + deta_yam; % 更新yam
        v = v + deta_v; % 更新v
    end
end
    
