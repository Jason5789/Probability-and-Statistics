%1. (a)
%Distribution 1~4
x = [0 100];
y = [1000 2000];
for i = 0:1:100
    for j = 1000:1:2000
        dis1(j-999,i+1) = bivariate(i,j,50,20,1500,200,0);
        dis2(j-999,i+1) = bivariate(i,j,50,20,1500,200,0.3);
        dis3(j-999,i+1) = bivariate(i,j,50,20,1500,200,0.8);
        dis4(j-999,i+1) = bivariate(i,j,50,20,1500,200,-0.8);
    end
end
subplot(2,2,1);
imagesc(x,y,dis1);
colormap(jet);
colorbar;
xlabel('X');
ylabel('Y');
title(sprintf('Distribution 1'));

subplot(2,2,2);
imagesc(x,y,dis2);
colormap(jet);
colorbar;
xlabel('X');
ylabel('Y');
title(sprintf('Distribution 2'));

subplot(2,2,3);
imagesc(x,y,dis3);
colormap(jet);
colorbar;
xlabel('X');
ylabel('Y');
title(sprintf('Distribution 3'));

subplot(2,2,4);
imagesc(x,y,dis4);
colormap(jet);
colorbar;
xlabel('X');
ylabel('Y');
title(sprintf('Distribution 4'));
