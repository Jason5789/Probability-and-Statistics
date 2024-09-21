%1.(a)
rate = input("input defective rate = ");  %let user input defective rate
product_num = input("input number of products to be manufactured = ");  %let user input number of products to be manufactured
output1_1 = random_process(product_num,rate);  %experiment, 0s represent non-defective and 1s represent defective
fprintf('1.(a) Output: [');  %print result 1.1
if (product_num > 1)
    fprintf(' %g ,',output1_1(1:end-1));  %print this line if number of product>1
end
fprintf(' %g ]\n',output1_1(end));  %print result 1.1


%1.(b)
data1_2 = zeros(1,1000);  %to save 1000 numbers, each number represent total number of defectives for each experiment
for i = 1:1000
    output1_2 = random_process(10000,0.02);  %experiment, 0s represent non-defective and 1s represent defective
    data1_2(i) = sum(output1_2);  %total number of defectives for this experiment
end
%Plot a relative frequency histogram
bars = [140 145 150 155 160 165 170 175 180 185 190 195 200 205 210 215 220 225 230 235 240 245 250 255 260];  %separate in 24 parts
histogram(data1_2,bars,'Normalization','probability');  %construct a relative frequency histogram
xlabel('total number of defectives');  %x-axis label
ylabel('Relative Frequency');  %y-axis label
save HW2_1b data1_2;


%1.(c)
total_product = 100000;  %100000 products to be made
product_B1 = 0.3;  %B1 make 30% of products
def_B1 = 0.02;  %defective rates of machine B1
product_B2 = 0.45;  %B2 make 45% of products
def_B2 = 0.03;  %defective rates of machine B2
product_B3 = 0.25;  %B3 make 25% of products
def_B3 = 0.02;  %defective rates of machine B3
data_B1 = zeros(1,10);  %to save 10 numbers, each number represent total number of defectives for each B1 experiment
data_B2 = zeros(1,10);  %to save 10 numbers, each number represent total number of defectives for each B2 experiment
data_B3 = zeros(1,10);  %to save 10 numbers, each number represent total number of defectives for each B3 experiment
answer1_3 = zeros(1,10);  %to save 10 numbers, each number represent total number of defectives for each experiment
for i = 1:10
    data_proc = random_process(total_product*product_B1,def_B1);  %B1 experiment, 0s represent non-defective and 1s represent defective
    data_B1(i) = sum(data_proc)/(total_product*product_B1);  %total number of defectives for this experiment
    data_proc = random_process(total_product*product_B2,def_B2);  %B2 experiment, 0s represent non-defective and 1s represent defective
    data_B2(i) = sum(data_proc)/(total_product*product_B2);  %total number of defectives for this experiment
    data_proc = random_process(total_product*product_B3,def_B3);  %B3 experiment, 0s represent non-defective and 1s represent defective
    data_B3(i) = sum(data_proc)/(total_product*product_B3);  %total number of defectives for this experiment
    
    answer1_3(i) = (data_B3(i)*product_B3)/(data_B1(i)*product_B1 + data_B2(i)*product_B2 + data_B3(i)*product_B3);
end
save HW2_1c answer1_3;

%在課本的Example 2.42中，所計算出的theoretical value是10/49，換算成小數約為0.2041，而我在10次的實驗中，分別得到了0.2067 , 0.1967 , 0.2122 , 0.1978 , 0.2065 , 0.2080 , 0.1966 , 0.2156 , 0.2026 , 0.2086，實驗得到的值都很接近theoretical value，雖然沒有剛好和theoretical value一樣，有時候會比theoretical value大一點點，有時候會比theoretical value小一點點，但都是在theoretical value附近的值，不會相差太遠。