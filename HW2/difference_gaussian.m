syms x
syms y
syms g(x,y)

g(x,y) = exp(-(x.^2) / (2 * y.^2)) / (y * sqrt(2 * pi));

% Part a)
g_2der = diff(g,x,2);

figure('Name','2nd Derivative'), fplot(g_2der(x,1),[-7 7]);

% Part b)
syms d(x,y,k)

d(x,y,k) = ((exp(-(x.^2) / (2 * y.^2 * k)) / (y * k * sqrt(2 * pi))) - (exp(-(x.^2)/(2 * y.^2)) / (y * sqrt(2 * pi))))/ (k * y -y)

figure('Name','k=1.2'), fplot(d(x,1,1.2),[-7 7])
figure('Name','k=1.4'), fplot(d(x,1,1.4),[-7 7])
figure('Name','k=1.6'), fplot(d(x,1,1.6),[-7 7])
figure('Name','k=1.8'), fplot(d(x,1,1.8),[-7 7])
figure('Name','k=2.0'), fplot(d(x,1,2.0),[-7 7])