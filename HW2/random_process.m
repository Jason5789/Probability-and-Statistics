function [output] = random_process(product,rate)
%experiment, 0s represent non-defective and 1s represent defective
result = floor(rand(1,product)+rate); %use the defective rate and number of products to do the experiment
output = result;  %give the data from result to output
end