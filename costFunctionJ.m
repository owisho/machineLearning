# 线性回归损失函数
# 给定样本X，结果y 和 回归函数参数theta，计算回归函数预测值与 结果y的均方差

function J = costFunctionJ(X,y,theta)

	% X is the "design matrix" containing our traning examples
	% y is the class labels

	m = size(X,1); % number of training examples
	predictions = X*theta; % predictions of hypothesis on all m examples

	sqrErrors = (predictions - y).^2;

	J = 1/(2*m) * sum(sqrErrors);