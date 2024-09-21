%2.(a)
x = [0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5 13.5 14.5];  %x range
for i=1:1:100 %generate probability distribution
    if i<=4
        fx(i)=1;
    elseif i<=10
        fx(i)=2;
    elseif i<=17
        fx(i)=3;
    elseif i<=25
        fx(i)=4;
    elseif i<=33
        fx(i)=5;
    elseif i<=44
        fx(i)=6;
    elseif i<=51
        fx(i)=7;
    elseif i<=57
        fx(i)=8;
    elseif i<=62
        fx(i)=9;
    elseif i<=65
        fx(i)=10;
    elseif i<=71
        fx(i)=11;
    elseif i<=83
        fx(i)=12;
    elseif i<=93
        fx(i)=13;
    else
        fx(i)=14;
    end
end
histogram(fx,x,'Normalization','probability');  %plot the probability distribution f(x) versus X according to the table
xlabel('X');   %x label
ylabel('f(x)');   %y label

%2.(b)
num = input("input number of sample = ");  %let user input number of sample
result = user_rand(num);  %generate random samples of X with number of samples input by users
histogram(result,x,'Normalization','probability');  %plot the probability distribution f(x) versus X according to the table
xlabel('X');   %x label
ylabel('f(x)');   %y label
%在比較2.(a)和2.(b)的relative frequency plot後，我們可以發現，因為2.(b)所畫出來的圖是隨機的，造成兩者的結果有些許誤差，但這個誤差並不大，f(x)的結果大致相同，非常接近2.(a)的值。