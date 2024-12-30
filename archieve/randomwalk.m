%clc;
clearvars;
N = 86400; % Length of the x-axis, also known as the length of the random walks.
%Currently representing a day with sampling rate 1Hz
M = 100; % The amount of random walks.
x_t(1) = 0;
y_t(1) = 0;

B=[-1,0,1];
B1=[-1,0];
B2=[0,1];
%Add a box using if command
for m=1:M
  for n = 1:N % Looping all values of N into x_t(n).
    %A = sign(randn); % Generates either +1/-1 depending on the SIGN of RAND.
    if (x_t(n)< 15) && (x_t(n)> -15)
    x_t(n+1) = x_t(n) + B(randperm(numel(B),1));
    elseif x_t(n)<= -15
        x_t(n+1) = x_t(n)+ B2(randperm(numel(B2),1));
    else 
        x_t(n+1) = x_t(n)+ B1(randperm(numel(B1),1));
    end
    
    if (y_t(n)< 20) && (y_t(n)> -20)
    y_t(n+1) = y_t(n) + B(randperm(numel(B),1));
    elseif y_t(n)<= -20
        y_t(n+1) = y_t(n)+ B2(randperm(numel(B2),1));
    else 
        y_t(n+1) = y_t(n)+ B1(randperm(numel(B1),1));
    end
    
    %A = sign(randn); % Generates either +1/-1 depending on the SIGN of RAND.
    %y_t(n+1) = y_t(n) + B(randperm(numel(B),1));
    
  end
  H=[x_t; y_t];
  %subplot(2,2,1); 
  %plot(x_t, y_t);
  %hold on
end
H3s=histcounts2(H(1,:), H(2,:), 50);
pts1 = linspace(1, 8000, 2160000);
pts2 = linspace(1, 6000, 2160000);
[xG, yG] = meshgrid(-5000:5000);
sigma = 2.5;
g = exp(-xG.^2./(2.*sigma.^2)-yG.^2./(2.*sigma.^2));
g = g./sum(g(:));

imagesc(pts2, pts1, conv2(H3s, g, 'same'));
axis equal;
set(gca, 'XLim', pts2([1 end]), 'YLim', pts1([1 end]), 'YDir', 'normal');
colormap(hot); set(gca,'xtick',[]); set(gca,'ytick',[]); set(gca,'XTickLabel',[]); set(gca,'YTickLabel',[]);

print(gcf,'Sim4.jpg','-djpeg','-r600');



