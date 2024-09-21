function [my_bino] = my_binominal(x,n,p)
px=1;
q=1;
for i = 1:1:x    %calculate p^x
    px = px * p;
end
for i = 1:1:n-x    %calculate q^(n-x)
    q = q * (1-p);
end
my_bino = nchoosek(n,x)*px*q;    %calculate binominal distribution
end