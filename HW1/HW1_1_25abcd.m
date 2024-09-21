%1.25
%data set from exercise 1.25
data = [72.2 31.9 26.5 29.1 27.3 8.6 22.3 26.5 20.4 12.8 25.1 19.2 24.1 58.2 68.1 89.2 55.1 9.4 14.5 13.9 20.7 17.9 8.5 55.4 38.1 54.2 21.5 26.2 59.1 43.3];
data = sort(data);  %sort data from smallest to largest

%1.25 (a) Calculate the smaple mean
total = 0;
for i = 1 : length(data);
    total = total + data(i);  %sum the data
end
sample_mean = total/length(data);  %calculate the smaple mean
fprintf('(a) Sample mean: %f\n',sample_mean);  %print sample mean


%1.25 (b) Calculate the smaple median
if mod(length(data),2) == 0  %if the length of data is even
    sample_median = ( data(length(data)/2) + data(length(data)/2 + 1) ) / 2;
else  %if the length of data is odd
    sample_median = data(floor(length(data)/2));
end
fprintf('(b) Sample median: %f\n',sample_median);  %print sample median


%1.25 (c) Construct a relative frequency histogram of the data
percentage = [0 10 20 30 40 50 60 70 80 90 100];  %separate in 10 parts
histogram(data,percentage,'Normalization','probability');  %construct a relative frequency histogram
xlabel('percentage of families in the upper income level for current school system (%)');  %x-axis label
ylabel('Relative Frequency');  %y-axis label


%1.25 (d) Compute the 10% trimmed mean
ten_percent = length(data) * 0.1;  %10 percent of data length
largest10pct_smallest10pct_total = 0;
for i = 1 : ten_percent  %sum the largest 10% data and smallest 10% data
    largest10pct_smallest10pct_total = data(i) + data(length(data)-i+1) + largest10pct_smallest10pct_total;
end
trimmed_mean = (total - largest10pct_smallest10pct_total) / (length(data)-ten_percent*2);
fprintf('(d) 10%% trimmed mean: %f\n',trimmed_mean);  %print 10% trimmed mean


%1.25 (d) Compare with the results in (a) and (b) and comment
%可以發現在10% trimmed mean和 sample mean與sample median的比較中，最大的是sample mean，接著中間的是10% trimmed mean，最小的是sample median。再去掉largest 10%和smallest 10%後的10% trimmed mean明顯比sample mean小，因此我們可以推測這些資料可能有較大的值在其中．