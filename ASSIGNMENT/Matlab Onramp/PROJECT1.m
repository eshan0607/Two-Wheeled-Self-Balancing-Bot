%task1
load electricity
usage;
%task2
usage(2,3) = 2.74;
%task3
res = usage(:,1);
%task4
comm = usage(:,2);
ind = usage(:,3);
%task5
yrs = (1991:1:2013);
%task6
plot(yrs,res,"b--")
hold on
plot(yrs,comm,"k:")
plot(yrs,ind,"m-.")
%task7
title("July Electricity Usage")
legend("res","comm","ind")