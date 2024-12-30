figure('Renderer', 'painters', 'Position', [10 10 1500 900]);
h=axes;
hold on;
%title('Hourly Averaged Temperature');
xlabel('Postnatal age (days)','FontSize', 18);
ylabel('Temperature (°C)','FontSize', 18);
ax.FontSize = 18;
set(gca,'FontSize',18);


female_temperature_daily_mean = temperature_female_listerhooded_overall_d_regular_mean;
female_temperature_daily_std = temperature_female_listerhooded_overall_d_regular_std;
male_temperature_daily_mean = temperature_male_listerhooded_overall_d_regular_mean;
male_temperature_daily_std = temperature_male_listerhooded_overall_d_regular_std;



%title('Trend of Data with 95% Prediction Interval')
%%%%%%%%%%%%%% Female light
t=1:75;
plot(t,female_temperature_daily_mean,'s','MarkerSize',8,'Color','#CA3433','MarkerFaceColor','#CA3433','DisplayName', 'female light')

slm_f_t = slmengine(t,female_temperature_daily_mean,'degree',1,'knots',[1 14 75],'plot','off');
plot(slm_f_t.knots,slm_f_t.coef,'-','Color','#CA3433', 'LineWidth', 5);

slm_m_t_up = slmengine(t,female_temperature_daily_mean+male_temperature_daily_std,'degree',1,'knots',[1 14 75],'plot','off');
slm_m_t_down = slmengine(t,female_temperature_daily_mean-male_temperature_daily_std,'degree',1,'knots',[1 14 75],'plot','off');


plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#CA3433', 'LineWidth', 1)
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#CA3433', 'LineWidth', 1)


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.1, 'EdgeColor', '#FBAED2', 'FaceColor', '#FBAED2');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

plot(t,male_temperature_daily_mean,'o','MarkerSize',8,'Color','#222021','MarkerFaceColor','#222021');

slm_m_t = slmengine(t,male_temperature_daily_mean,'degree',1,'knots',[1 15 75],'plot','off');

plot(slm_m_t.knots,slm_m_t.coef,'-','Color','#222021', 'LineWidth', 5);



slm_m_t_up = slmengine(t,male_temperature_daily_mean+male_temperature_daily_std,'degree',1,'knots',[1 15 75],'plot','off');
slm_m_t_down = slmengine(t,male_temperature_daily_mean-male_temperature_daily_std,'degree',1,'knots',[1 15 75],'plot','off');


plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#222021', 'LineWidth', 1)
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#222021', 'LineWidth', 1)


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.2, 'EdgeColor', '#BEBDB8', 'FaceColor', '#BEBDB8');
ylim([32 40])
get(h,'XTickLabel') % shows 0 to 1
set(h,'XTickLabel',[{'22', '30', '40', '50', '60', '70', '80', '90', '100'}]) %shows 1 to 11


print(gcf,'temperature_listerhooded_regular_daily_finalii.jpg','-djpeg','-r600');

