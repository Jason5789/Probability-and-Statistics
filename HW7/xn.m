function [output] = xn(n)
output = zeros(1,1000000);  %create vector
for i=1:1:1000000
    r = rand(1,n);  %Generate a 1-by-n column vector 
    for j=1:1:n
    output(i) = output(i)+r(j);  %repeat the process for n times and sum up those n vectors
    end
end