# 给fminunc使用的线性回归损失函数

# 	一种比梯度下降更高效的计算参数theta的方式

# 使用举例：
# >> options = optimset('GradObj','on','MaxIter','100');
# >> initialTheta = zeros(2,1);
# >> [optTheta,functionalVal,exitFlag]=fminunc(@costFunction,initialTheta,options)

# 返回值示例：
# >> optTheta = 
#		-0.078740
#		1.409449
# functionalVal = 32.857
# exitFlag = 3 

# 说明：
# 	1.exitFlag 表示 执行结果，3代表打到指定精确度
# 	2.针对不同的样本和结果集需要修改函数内的数据集进行匹配

# 其他：
# 	使用规则详见 help fminunc


function [jVal,gradient] = costFunction(theta)

	data = [1 2;2 3;4 5;6 7;8 0;11 12;12 32;13 29;18 15];
	y = data(:,2);
	X = data(:,1);

	m = length(y);
	X = [ones(m,1),X];

	tmp1 = X*theta-y;
	square = tmp1.^2;
	jVal = 1/(2*m)*sum(square);

	step = X'*(X*theta - y);
	gradient = (1/m)*step;