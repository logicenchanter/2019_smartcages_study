



female_distance_daily_mean = distance_female_listerhooded_overall_d_regular_mean;
female_distance_daily_std = distance_female_listerhooded_overall_d_regular_std;
male_distance_daily_mean = distance_male_listerhooded_overall_d_regular_mean;
male_distance_daily_std = distance_male_listerhooded_overall_d_regular_std;



t = 1:75;


figure('Renderer', 'painters', 'Position', [10 10 1500 900]);
h=axes;
hold on;
%title('Hourly Averaged Temperature');
xlabel('Postnatal age (days)','FontSize', 18);
ylabel('Distance traveled (mm)','FontSize', 18);
ax.FontSize = 18;
set(gca,'FontSize',18);




plot(t,female_distance_daily_mean,'s','MarkerSize',8,'Color','#CA3433','MarkerFaceColor','#CA3433','DisplayName', 'female light')

slm_f_t = slmengine(t,female_distance_daily_mean,'degree',1,'knots',[1 75],'plot','off');

plot(slm_f_t.knots,slm_f_t.coef,'-','Color','#CA3433', 'LineWidth', 5);

slm_f_t_up = slmengine(t,female_distance_daily_mean+female_distance_daily_std,'degree',1,'knots',[1 75],'plot','off');
slm_f_t_down = slmengine(t,female_distance_daily_mean-female_distance_daily_std,'degree',1,'knots',[1 75],'plot','off');


plot(slm_f_t_up.knots,slm_f_t_up.coef,'--','Color','#CA3433', 'LineWidth', 1)
plot(slm_f_t_down.knots,slm_f_t_down.coef,'--','Color','#CA3433', 'LineWidth', 1)


inBetween = [slm_f_t_up.coef', fliplr(slm_f_t_down.coef')];
t2 = [slm_f_t_up.knots',fliplr(slm_f_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.1, 'EdgeColor', '#FBAED2', 'FaceColor', '#FBAED2');

ylim([0 400000])
get(h,'XTickLabel') % shows 0 to 1
set(h,'XTickLabel',[{'22', '30', '40', '50', '60', '70', '80', '90', '100'}]) %shows 1 to 11

print(gcf,'distance_listerhooded_female_regular_daily_onepiece.jpg','-djpeg','-r600');



figure('Renderer', 'painters', 'Position', [10 10 1500 900]);
h=axes;
hold on;
%title('Hourly Averaged Temperature');
xlabel('Postnatal age (days)','FontSize', 18);
ylabel('Distance traveled (mm)','FontSize', 18);
ax.FontSize = 18;
set(gca,'FontSize',18);


idx = find(male_distance_daily_mean ~= 0);
idx_std = find(male_distance_daily_std ~= 0);

plot(t(idx),male_distance_daily_mean(idx),'o','MarkerSize',8,'Color','#222021','MarkerFaceColor','#222021');

slm_m_t = slmengine(t(idx),male_distance_daily_mean(idx),'degree',1,'knots',[1,75],'plot','off');

plot(slm_m_t.knots,slm_m_t.coef,'-','Color','#222021', 'LineWidth', 5);

slm_m_t_up = slmengine(t(idx),male_distance_daily_mean(idx)+male_distance_daily_std(idx_std),'degree',1,'knots',[1,75],'plot','off');
slm_m_t_down = slmengine(t(idx),male_distance_daily_mean(idx)-male_distance_daily_std(idx_std),'degree',1,'knots',[1,75],'plot','off');


plot(slm_m_t_up.knots,slm_m_t_up.coef,'--','Color','#222021', 'LineWidth', 1)
plot(slm_m_t_down.knots,slm_m_t_down.coef,'--','Color','#222021', 'LineWidth', 1)


inBetween = [slm_m_t_up.coef', fliplr(slm_m_t_down.coef')];
t2 = [slm_m_t_up.knots',fliplr(slm_m_t_down.knots')];
fill(t2, inBetween, '-r','FaceAlpha',0.2, 'EdgeColor', '#BEBDB8', 'FaceColor', '#BEBDB8');
clear up down
ylim([0 400000])
get(h,'XTickLabel') % shows 0 to 1
set(h,'XTickLabel',[{'22', '30', '40', '50', '60', '70', '80', '90', '100'}]) %shows 1 to 11


print(gcf,'distance_listerhooded_male_regular_daily_onepice.jpg','-djpeg','-r600');