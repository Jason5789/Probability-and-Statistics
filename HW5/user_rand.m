function [fx] = user_rand(num)
r = rand(num,1);
    for i=1:1:num
        r(i) = r(i)*100;
        if r(i)<=4
            fx(i)=1;
        elseif r(i)<=10
            fx(i)=2;
        elseif r(i)<=17
            fx(i)=3;
        elseif r(i)<=25
            fx(i)=4;
        elseif r(i)<=33
            fx(i)=5;
        elseif r(i)<=44
            fx(i)=6;
        elseif r(i)<=51
            fx(i)=7;
        elseif r(i)<=57
            fx(i)=8;
        elseif r(i)<=62
            fx(i)=9;
        elseif r(i)<=65
            fx(i)=10;
        elseif r(i)<=71
            fx(i)=11;
        elseif r(i)<=83
            fx(i)=12;
        elseif r(i)<=93
            fx(i)=13;
        else
            fx(i)=14;
        end
    end
end