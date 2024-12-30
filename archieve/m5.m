
female_velocity_daily_mean = velocity_female_listerhooded_s_regular_mean;
female_velocity_daily_std = velocity_female_listerhooded_s_regular_std;
male_velocity_daily_mean = velocity_male_listerhooded_s_regular_mean;
male_velocity_daily_std = velocity_male_listerhooded_s_regular_std;
 

%title('Trend of Data with 95% Prediction Interval')
%%%%%%%%%%%%%% Female light
subplot(5,2,9,'align'); hold on;
t=1:75;
plot(t,female_velocity_daily_mean,'s','MarkerSize',2,'Color','#CA3433','MarkerFaceColor','#CA3433','DisplayName', 'female light')

%slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'knots',[1 75],'plot','off');
slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
plot(slm_f_t.knots,slm_f_t.coef,'-','Color','#CA3433', 'LineWidth', 2);

%slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');
%slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');


slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');


subplot(5,2,9,'align'); hold on;
plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#CA3433', 'LineWidth', 1);
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#CA3433', 'LineWidth', 1);


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.1, 'EdgeColor', '#FBAED2', 'FaceColor', '#FBAED2');

ylim([0.0002 0.0045])
set(gca, 'XTickLabel', []);





subplot(5,2,10,'align'); hold on;
plot(t,male_velocity_daily_mean,'o','MarkerSize',2,'Color','#222021','MarkerFaceColor','#222021');

slm_m_t = slmengine(t,male_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

plot(slm_m_t.knots,slm_m_t.coef,'-','Color','#222021', 'LineWidth', 2);



slm_m_t_up = slmengine(t,male_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,male_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

subplot(5,2,10,'align'); hold on;
plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#222021', 'LineWidth', 1)
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#222021', 'LineWidth', 1)


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.2, 'EdgeColor', '#BEBDB8', 'FaceColor', '#BEBDB8');

ylim([0.0002 0.0045])
set(gca, 'XTickLabel', []);
set(gca, 'YTickLabel', []);



female_velocity_daily_mean = velocity_female_longevans_s_regular_mean;
female_velocity_daily_std = velocity_female_longevans_s_regular_std;
male_velocity_daily_mean = velocity_male_longevans_s_regular_mean;
male_velocity_daily_std = velocity_male_longevans_s_regular_std;
 

%title('Trend of Data with 95% Prediction Interval')
%%%%%%%%%%%%%% Female light
subplot(5,2,9,'align'); hold on;
t=1:75;
plot(t,female_velocity_daily_mean,'s','MarkerSize',2,'Color','#CA3433','MarkerFaceColor','#CA3433','DisplayName', 'female light')

%slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'knots',[1 75],'plot','off');
slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
plot(slm_f_t.knots,slm_f_t.coef,'-','Color','#CA3433', 'LineWidth', 2);

%slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');
%slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');


slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');


subplot(5,2,9,'align'); hold on;
plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#CA3433', 'LineWidth', 1);
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#CA3433', 'LineWidth', 1);


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.1, 'EdgeColor', '#FBAED2', 'FaceColor', '#FBAED2');

ylim([0.0002 0.0045])
set(gca, 'XTickLabel', []);






subplot(5,2,10,'align'); hold on;
plot(t,male_velocity_daily_mean,'o','MarkerSize',2,'Color','#222021','MarkerFaceColor','#222021');

slm_m_t = slmengine(t,male_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

plot(slm_m_t.knots,slm_m_t.coef,'-','Color','#222021', 'LineWidth', 2);



slm_m_t_up = slmengine(t,male_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,male_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

subplot(5,2,10,'align'); hold on;
plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#222021', 'LineWidth', 1)
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#222021', 'LineWidth', 1)


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.2, 'EdgeColor', '#BEBDB8', 'FaceColor', '#BEBDB8');

ylim([0.0002 0.0045])
set(gca, 'XTickLabel', []);
set(gca, 'YTickLabel', []);



female_velocity_daily_mean = velocity_female_wistar_s_regular_mean;
female_velocity_daily_std = velocity_female_wistar_s_regular_std;
male_velocity_daily_mean = velocity_male_wistar_s_regular_mean;
male_velocity_daily_std = velocity_male_wistar_s_regular_std;
 

%title('Trend of Data with 95% Prediction Interval')
%%%%%%%%%%%%%% Female light
subplot(5,2,9,'align'); hold on;
t=1:75;
plot(t,female_velocity_daily_mean,'s','MarkerSize',2,'Color','#CA3433','MarkerFaceColor','#CA3433','DisplayName', 'female light')

%slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'knots',[1 75],'plot','off');
slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
plot(slm_f_t.knots,slm_f_t.coef,'-','Color','#CA3433', 'LineWidth', 2);

%slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');
%slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');


slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');


subplot(5,2,9,'align'); hold on;
plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#CA3433', 'LineWidth', 1);
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#CA3433', 'LineWidth', 1);


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.1, 'EdgeColor', '#FBAED2', 'FaceColor', '#FBAED2');

ylim([0.0002 0.0045])
set(gca, 'XTickLabel', []);






subplot(5,2,10,'align'); hold on;
plot(t,male_velocity_daily_mean,'o','MarkerSize',2,'Color','#222021','MarkerFaceColor','#222021');

slm_m_t = slmengine(t,male_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

plot(slm_m_t.knots,slm_m_t.coef,'-','Color','#222021', 'LineWidth', 2);



slm_m_t_up = slmengine(t,male_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,male_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

subplot(5,2,10,'align'); hold on;
plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#222021', 'LineWidth', 1)
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#222021', 'LineWidth', 1)


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.2, 'EdgeColor', '#BEBDB8', 'FaceColor', '#BEBDB8');

ylim([0.0002 0.0045])
set(gca, 'XTickLabel', []);
set(gca, 'YTickLabel', []);



female_velocity_daily_mean = velocity_female_spraguedawley_s_regular_mean;
female_velocity_daily_std = velocity_female_spraguedawley_s_regular_std;
male_velocity_daily_mean = velocity_male_spraguedawley_s_regular_mean;
male_velocity_daily_std = velocity_male_spraguedawley_s_regular_std;
 

%title('Trend of Data with 95% Prediction Interval')
%%%%%%%%%%%%%% Female light
h1 = subplot(5,2,9,'align'); hold on;

t=1:75;
plot(t,female_velocity_daily_mean,'s','MarkerSize',2,'Color','#CA3433','MarkerFaceColor','#CA3433','DisplayName', 'female light')

%slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'knots',[1 75],'plot','off');
slm_f_t = slmengine(t,female_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
plot(slm_f_t.knots,slm_f_t.coef,'-','Color','#CA3433', 'LineWidth', 2);

%slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');
%slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'knots',[1 75],'plot','off');


slm_m_t_up = slmengine(t,female_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,female_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');


subplot(5,2,9,'align'); hold on;

plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#CA3433', 'LineWidth', 1);
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#CA3433', 'LineWidth', 1);


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.1, 'EdgeColor', '#FBAED2', 'FaceColor', '#FBAED2');

ylim([0.0002 0.0045])
%set(gca, 'XTickLabel', []);
%get(h1,'XTickLabel') % shows 0 to 1
%set(h1,'XTickLabel',[{'22', '40', '60', '80', '100'}]) %shows 1 to 11
get(h1,'XTickLabel') % shows 0 to 1
set(h1,'XTickLabel',[{'22', '40', '60', '80', '100'}]) %shows 1 to 11

a = get(gca,'XTickLabel');
set(gca,'XTickLabel',a,'FontName','Helvetica','fontsize',8)
ylabel(h1,['Velocity m/s'], 'FontSize',12);
%t = text('Velocity m/s','HorizontalAlignment','center','VerticalAlignment','middle', 'FontSize',12,'Rotation',90);



h2 = subplot(5,2,10,'align'); hold on;

plot(t,male_velocity_daily_mean,'o','MarkerSize',2,'Color','#222021','MarkerFaceColor','#222021');

slm_m_t = slmengine(t,male_velocity_daily_mean,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

plot(slm_m_t.knots,slm_m_t.coef,'-','Color','#222021', 'LineWidth', 2);



slm_m_t_up = slmengine(t,male_velocity_daily_mean+male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');
slm_m_t_down = slmengine(t,male_velocity_daily_mean-male_velocity_daily_std,'degree',1,'interiorknots', 'free', 'robust', 'off','plot','off');

subplot(5,2,10,'align'); hold on;
plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#222021', 'LineWidth', 1)
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#222021', 'LineWidth', 1)


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.2, 'EdgeColor', '#BEBDB8', 'FaceColor', '#BEBDB8');

ylim([0.0002 0.0045])
set(gca, 'YTickLabel', []);
%set(gca, 'XTickLabel', []);

get(h2,'XTickLabel') % shows 0 to 1
set(h2,'XTickLabel',[{'22', '40', '60', '80', '100'}]) %shows 1 to 11

a = get(gca,'XTickLabel');
set(gca,'XTickLabel',a,'FontName','Helvetica','fontsize',8)





annotation(fig,'textbox',[0.09 0.96 0.038 0.022],'String','A','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.53 0.96 0.038 0.022],'String','B','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.09 0.78 0.038 0.022],'String','C','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.53 0.78 0.038 0.022],'String','D','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.09 0.60 0.038 0.022],'String','E','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.53 0.60 0.038 0.022],'String','F','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.09 0.43 0.038 0.022],'String','G','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.53 0.43 0.038 0.022],'String','H','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.09 0.26 0.038 0.022],'String','I','FontSize',24,'FitBoxToText','off','EdgeColor','none');
annotation(fig,'textbox',[0.53 0.26 0.038 0.022],'String','J','FontSize',24,'FitBoxToText','off','EdgeColor','none');




han=axes(fig,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
%ylabel(han,['Temperature ' char(176) 'C']);
%set(gca,'FontSize',22);
xlabel(han,'Postnatal age (day)');
set(gca,'FontSize',22);
