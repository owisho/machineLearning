# logistic 回归，分类问题损失计算函数

# 给定样本X，结果集y，参数theta计算，计算预测值与实际值的损失

function J = logisticCostFunctionJ(X,y,theta)

	m= length(y);

	p1 = X*theta;
	p2 = p1.*(-1);
	p3 = e.^p2;
	p4 = 1+p3;
	p5 = 1./p4;

	p6 = log(p5);
	p7 = log(1-p5);

	p8 = y'*p6+(1-y)'*p7;
	J = -p8/m;


