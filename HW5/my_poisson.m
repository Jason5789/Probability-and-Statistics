function [my_pois] = my_poisson(x,l,t)
deno=1;  %denominator
for i = 1:1:x
    deno = deno * i;  %calculate x!
end
nume=power(exp(1),-l*t)*power(l*t,x);  %numerator
my_pois = nume / deno;    %calculate poisson distribution
end