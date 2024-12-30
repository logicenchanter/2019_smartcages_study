%X=female_distance_minute_mean; %time-series
fs=(1/60); %in seconds
%Y=distance_female_listerhooded_6418_overall_s_regular;
fs=1;
m1=(3600*24*20)+(3600*9); %Day 20 (i.e. PND44) 9AM
m2=(3600*24*20)+(3600*10);%Day 20 (i.e. PND44) 10AM
X=Y(1,m1:m2);

t = (0:length(X)-1)/fs; %time
[imf,residual,info] = emd(X,'Interpolation','pchip'); %use interpolation pchip since signal is not smooth
hht(imf,fs); %hilbert spectrum plot
%hht(imf,fs,'FrequencyLimits',[10^(-5) 10^(-4)]) with frequency limits
[hs,f,T] = hht(imf,fs); %hs: hilbert spectrum, f:instantaneous frequency, T:time (s) 
[hs,f,t,imfinsf,imfinse] = hht(imf,fs); %Hilbert spectrum hs, frequency vector f, time vector t, instantaneous frequency imfinsf, and instantaneous energy imfinse.
mesh(T,f,hs,'EdgeColor','none','FaceColor','interp')
xlabel('Time (s)')
ylabel('Frequency (Hz)')
zlabel('Instantaneous Energy')
view(0,0) %view for instantenous energy vs time
set(gca,'XTick',[300 600 900 1200 1500 1800 2100 2400 2700 3000 3300 3600])
set(gca,'XTickLabel',{'5','10', '15', '20', '25','30','35', '40', '45', '50','55','60'})

axis([0 3600 0 inf])
xlabel('Measurement Time (min)') 
ylabel('Instantaneous Energy') 

sigma=0.5;
B = imgaussfilt(hs,sigma);%using gaussian filter 