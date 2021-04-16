# 线性回归 梯度下降函数
# 给定训练样本X和结果集y，学习率alpha，迭代计算回归函数参数theta，并绘制损失跟随步骤变化的曲线

# 说明：
# 	alpha 为学习率
# 	X 的数据一行为一个训练样本  与 y 行对应

function theta = gradientDesent(theta,X,y,alpha)

m = length(y);

i = 0;

indexX = [0];
indexY = [100];

while i< 100
	i = i+1;
	cost = costFunctionJ(theta,X,y);
	indexX = [indexX,i];
	indexY = [indexY,cost];
	step = X'*(X*theta - y);
	theta = theta - alpha*(1/m)*step;
end;

plot(indexX,indexY,'markersize',10000);




