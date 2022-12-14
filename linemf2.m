function out = linemf2(x,params)
% (params(1), params(2)) : 2直線の交点座標(x,y)
% params(3) : 0<=x<params(1) の直線の傾き
% params(4) : params(1)<=x<=1 の直線の傾き
	out = zeros(length(x),1);
	for i = 1:length(x)
		if x(i) < params(1)
			out(i) = params(3)*(x(i)-params(1))+params(2);
		else
			out(i) = params(4)*(x(i)-params(1))+params(2);
		end
		if out(i)>1; out(i)=1; end
		if out(i)<0; out(i)=0; end
	end
end

