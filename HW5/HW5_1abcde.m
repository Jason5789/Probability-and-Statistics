%1.(a)
x = input("1.(a)\ninput x = ");  %let user input x
n = input("input n = ");  %let user input n
p = input("input p = ");  %let user input p
binominal = my_binominal(x,n,p);  %calculate binominal distribution
fprintf('1.(a)Binominal distribution = %f\n',binominal);  %print result 1.(a)

%1.(b)
x = input("\n1.(b)\ninput x = ");  %let user input x
l = input("input l = ");  %let user input l
t = input("input t = ");  %let user input t
poisson = my_poisson(x,l,t);  %calculate poission distribution
fprintf(['1.(b)Poisson distribution = %f\n'],poisson);  %print result 1.(b)

%1.(c)
n=[1;1;2;2;2;3;3;3;3;4;4;4;4;4;5;5;5;5;5;5;6;6;6;6;6;6;6;7;7;7;7;7;7;7;7];  %n
r=[0;1;0;1;2;0;1;2;3;0;1;2;3;4;0;1;2;3;4;5;0;1;2;3;4;5;6;0;1;2;3;4;5;6;7];  %r
count=0; 
for j = 1:1:7  %calculate binominal distribution with p=0.10
    add=0;
    for k = 0:1:j
        count = count+1;
        add = add + my_binominal(k,j,0.10);
        p_0_10(count,1) = add;
    end
end
count=0;
for j = 1:1:7  %calculate binominal distribution with p=0.20
    add=0;
    for k = 0:1:j
        count = count+1;
        add = add + my_binominal(k,j,0.20);
        p_0_20(count,1) = double(add);
    end
end
count=0;
for j = 1:1:7  %calculate binominal distribution with p=0.25
    add=0;
    for k = 0:1:j
        count = count+1;
        add = add + my_binominal(k,j,0.25);
        p_0_25(count,1) = double(add);
    end
end
for i=0.30:0.10:0.50  %calculate binominal distribution with p=0.30~0.50
    count=0;
    for j = 1:1:7
        add=0;
        for k = 0:1:j
            count = count+1;
            add = add + my_binominal(k,j,i);
            if i==0.3
                p_0_30(count,1) = double(add);
            elseif i==0.4
                p_0_40(count,1) = double(add);
            elseif i==0.5
                p_0_50(count,1) = double(add);
            end
        end
    end
end
for i=0.60:0.10:0.90  %calculate binominal distribution with p=0.60~0.90
    count=0;
    for j = 1:1:7
        add=0;
        for k = 0:1:j
            count = count+1;
            add = add + my_binominal(k,j,i);
            if i==0.6
                p_0_60(count,1) = double(add);
            elseif i==0.7
                p_0_70(count,1) = double(add);
            elseif i==0.8
                p_0_80(count,1) = double(add);
            else
                p_0_90(count,1) = double(add);
            end
        end
    end
end
%generate a probability table as in textbook p.746
Table_1_c = table(n,r,p_0_10,p_0_20,p_0_25,p_0_30,p_0_40,p_0_50,p_0_60,p_0_70,p_0_80,p_0_90);

%1.(d)
for i=5.5:0.5:9.5  %calculate poisson distribution with u=0.55~0.95
    add=0;
    for j=0:1:24
        add = add + my_poisson(j,i,1);
        r_d(j+1,1) = j;
        if i==5.5
            u_5_5(j+1,1) = double(add);
        elseif i==6.0
            u_6_0(j+1,1) = double(add);
        elseif i==6.5
            u_6_5(j+1,1) = double(add);
        elseif i==7.0
            u_7_0(j+1,1) = double(add);
        elseif i==7.5
            u_7_5(j+1,1) = double(add);
        elseif i==8.0
            u_8_0(j+1,1) = double(add);
        elseif i==8.5
            u_8_5(j+1,1) = double(add);
        elseif i==9.0
            u_9_0(j+1,1) = double(add);
        elseif i==9.5
            u_9_5(j+1,1) = double(add);
        end
    end
end
%generate a probability table as in textbook p.753
Table_1_d = table(r_d,u_5_5,u_6_0,u_6_5,u_7_0,u_7_5,u_8_0,u_8_5,u_9_0,u_9_5);

%1.(e)
%(n,p)=(10000,0.01)
n1=10000;
p=0.01;
x1=n1*p-50:n1*p+50;   %x range
y1_1=binopdf(x1,n1,p);  %calculate binominal distribution
l1=n1*p;  %l=n*p
y1_2=poisspdf(x1,l1);  %calculate poisson distribution
figure
bar(x1,y1_1,1)
hold on
bar(x1,y1_2,'LineWidth',2)
title('(n,p)=(10000,0.01)');  %title
xlabel('Observation');  %x label
ylabel('Probability');  %y label
legend('Binomial Distribution','Poisson Distribution','location','northeast');
hold off

%(n,p)=(10000,0.1)
n1=10000;
p=0.1;
x1=n1*p-120:n1*p+120;   %x range
y1_1=binopdf(x1,n1,p);  %calculate binominal distribution
l1=n1*p;  %l=n*p
y1_2=poisspdf(x1,l1);  %calculate poisson distribution
figure
bar(x1,y1_1,1)
hold on
bar(x1,y1_2,'LineWidth',2)
title('(n,p)=(10000,0.1)');  %title
xlabel('Observation');  %x label
ylabel('Probability');  %y label
legend('Binomial Distribution','Poisson Distribution','location','northeast');
hold off

%(n,p)=(10000,0.2)
n1=10000;
p=0.2;
x1=n1*p-250:n1*p+250;   %x range
y1_1=binopdf(x1,n1,p);  %calculate binominal distribution
l1=n1*p;  %l=n*p
y1_2=poisspdf(x1,l1);  %calculate poisson distribution
figure
bar(x1,y1_1,1)
hold on
bar(x1,y1_2,'LineWidth',2)
title('(n,p)=(10000,0.2)');  %title
xlabel('Observation');  %x label
ylabel('Probability');  %y label
legend('Binomial Distribution','Poisson Distribution','location','northeast');
hold off

%(n,p)=(10000,0.5)
n1=10000;
p=0.5;
x1=n1*p-350:n1*p+350;   %x range
y1_1=binopdf(x1,n1,p);  %calculate binominal distribution
l1=n1*p;  %l=n*p
y1_2=poisspdf(x1,l1);  %calculate poisson distribution
figure
bar(x1,y1_1,1)
hold on
bar(x1,y1_2,'LineWidth',2)
title('(n,p)=(10000,0.5)');  %title
xlabel('Observation');  %x label
ylabel('Probability');  %y label
legend('Binomial Distribution','Poisson Distribution','location','northeast');
hold off
%上面的四張圖分別代表不同的p值，n值皆為10000，藍色代表Binominal Distribution，紅色代表Poisson Distribution，Poisson Distribution的λ是由n*p所得出，綜合上面的四張圖，我們可以發現，p越小與1-p越大時，Binominal Distribution和Poisson Distribution之間的誤差也越小，當p=0.5時，誤差會是最大。