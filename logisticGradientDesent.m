# logistic 回归，梯度下降函数

# 给定样本X，结果y，学习率alpha，参数theta，迭代计算新theta并绘制损失跟随次数变化的曲线

function theta = logisticGradientDesent(X,y,theta,alpha)

	m = length(y);

	indexX = [0];
	indexY = [100];

	i = 1;
	while i< 10000
		i = i+1;

		# 计算损失函数的值
		cost = logisticCostFunctionJ(X,y,theta);
		indexX = [indexX,i];
		indexY = [indexY,cost];

		# 迭代theta值
		p1 = X*theta;
		p2 = p1.*(-1);
		p3 = e.^p2;
		p4 = 1+p3;
		p5 = 1./p4;
		step = X'*(p5 - y);
		theta = theta - alpha*(1/m)*step;
	end;

	plot(indexX,indexY,'markersize',10000);

