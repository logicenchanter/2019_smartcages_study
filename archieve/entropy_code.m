%%%%Sampling bins
%B1(2x162000000) is the x,y position in ms scale (25Hz)
load('D:\timeseries_SD_position\bx\sprague_dawley\individual_animals\female\ms\female_black_bx_1_ms.mat')
load('D:\timeseries_SD_position\by\sprague_dawley\individual_animals\female\ms\female_black_by_1_ms.mat')
B1=[female_black_bx_1_ms; female_black_by_1_ms];
%Set missing values to zero
B1(isnan(B1))=0;
%second scale
B1s1=B1(1,1:25:end);
B1s2=B1(2,1:25:end);
B1s=[B1s1; B1s2];
clear B1s1 B1s2

%minute scale
B1m1=B1(1,1:1500:end);
B1m2=B1(2,1:1500:end);
B1m=[B1m1; B1m2];
clear B1m1 B1m2

%Hour scale
B1h1=B1(1,1:90000:end);
B1h2=B1(2,1:90000:end);
B1h=[B1h1; B1h2];
clear B1h1 B1h2



%----Distance travelled
for i=2:length(B1)
    d1(i,1)=sqrt((B1(1,i)-B1(1,i-1))^2+(B1(2,i)-B1(2,i-1))^2); end
for i=2:length(B1s)
    d1s(i,1)=sqrt((B1s(1,i)-B1s(1,i-1))^2+(B1s(2,i)-B1s(2,i-1))^2); end
for i=2:length(B1m)
    d1m(i,1)=sqrt((B1m(1,i)-B1m(1,i-1))^2+(B1m(2,i)-B1m(2,i-1))^2); end
for i=2:length(B1h)
    d1h(i,1)=sqrt((B1h(1,i)-B1h(1,i-1))^2+(B1h(2,i)-B1h(2,i-1))^2); end

lag=1;
dim=2;
L1=length(d1)/25;
L1s=length(d1s)/25;
L1m=length(d1m)/25;
L1h=length(d1h)/25;
for k=1:25
    Ap1(k,1)=approximateEntropy(d1((L1*(k-1))+1:L1*k,1),lag,dim);

    Ap1s(k,1)=approximateEntropy(d1s((L1s*(k-1))+1:L1s*k,1),lag,dim);

    Ap1m(k,1)=approximateEntropy(d1m((L1m*(k-1))+1:L1m*k,1),lag,dim);

    Ap1h(k,1)=approximateEntropy(d1h((L1h*(k-1))+1:L1h*k,1),lag,dim);
end

plot(Ap1,'black','LineWidth',1);
hold on
plot(Ap1s,'Color',[0 0.4470 0.7410],'LineWidth',1);
hold on
plot(Ap1m,'Color',[0.4940 0.1840 0.5560],'LineWidth',1);
hold on
plot(Ap1h,'Color',[0.6350 0.0780 0.1840],'LineWidth',1);

set(gca,'XTick',[1 5 10 15 20 25])
set(gca,'XTickLabel',{'PN22','PN37', 'PN52', 'PN67', 'PN82', 'PN97'})