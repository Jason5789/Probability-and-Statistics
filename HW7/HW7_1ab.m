%1.(a)
n = input("1.(a)\ninput n = ");  %let user input n
vector_1a = zeros(1,1000000);  %create vector
vector_1a = xn(n);  %generate 10^6 ramdom sample point
fprintf('The vector is:\n[');
fprintf('%g ', vector_1a);
fprintf(']\n');

%1.(b)
%n=1
vector_1b_1 = zeros(1,1000000);  %create vector
vector_1b_1 = xn(1);  %generate 10^6 ramdom sample point
figure
subplot(3,1,1);  %subplot
histogram(vector_1b_1,100,'Normalization','pdf');  %plot relative frequency histogram
hold on
x = linspace(0,1);
y = normpdf(x,1/2,sqrt(1/12));  %calculate normal distribution
plot(x,y,'LineWidth',3);  %plot a normal distribution
title('Irwin-Hall distribution n=1');  %title
xlabel('Value');  %x label
ylabel('Probability density');  %y label
legend('Irwin-Hall','Normal distribution','location','northeast');
hold off

%n=2
vector_1b_2 = zeros(1,1000000);  %create vector
vector_1b_2 = xn(2);  %generate 10^6 ramdom sample point
nor_1b_2 = normpdf(2,2/2,2);
subplot(3,1,2);  %subplot
histogram(vector_1b_2,100,'Normalization','pdf');  %plot relative frequency histogram
hold on
x = linspace(0,2);
y = normpdf(x,2/2,sqrt(2/12));  %calculate normal distribution
plot(x,y,'LineWidth',3);  %plot a normal distribution
title('Irwin-Hall distribution n=2');  %title
xlabel('Value');  %x label
ylabel('Probability density');  %y label
legend('Irwin-Hall','Normal distribution','location','northeast');
hold off

%n=20
vector_1b_20 = zeros(1,1000000);  %create vector
vector_1b_20 = xn(20);  %generate 10^6 ramdom sample point
nor_1b_20 = normpdf(20,20/2,20/12);
subplot(3,1,3);  %subplot
histogram(vector_1b_20,100,'Normalization','pdf');  %plot relative frequency histogram
hold on
x = linspace(0,20);
y = normpdf(x,20/2,sqrt(20/12));  %calculate normal distribution
plot(x,y,'LineWidth',3);  %plot a normal distribution
title('Irwin-Hall distribution n=20');  %title
xlabel('Value');  %x label
ylabel('Probability density');  %y label
legend('Irwin-Hall','Normal distribution','location','northeast');
hold off

% 在n=1時，用Irwin-Hall distribution to approximate a normal distribution，可以發現之間的error非常明顯、非常大，這也是三者中error最大的。
% 在n=2時，用Irwin-Hall distribution to approximate a normal distribution，可以發現之間的error有比n=1時小不少，但是誤差還是可以直接看得出來。
% 在n=20時，用Irwin-Hall distribution to approximate a normal distribution，可以發現之間的error和n=1與n=2相比明顯變小許多，這也是三者中error最小的。
