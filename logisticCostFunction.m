# 给fminunc使用的 logistic 回归损失函数

function [jVal,gradient] = logisticCostFunction(theta)

	data = [1 1;2 1;3 1;4 0;5 0];
	y = data(:,2);
	X = data(:,1);

	m = length(y);
	X = [ones(m,1),X];

	p1 = X*theta;
	p2 = p1.*(-1);
	p3 = e.^p2;
	p4 = 1+p3;
	p5 = 1./p4;

	p6 = log(p5);
	p7 = log(1-p5);

	p8 = y'*p6+(1-y)'*p7;
	jVal = -p8/m;


	step = X'*(p5 - y);
	gradient = (1/m)*step;