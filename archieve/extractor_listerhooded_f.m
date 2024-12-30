file_ = fopen('female_listerhooded_6418_6476_6495.csv','w');
table_ = {'parameter' 'race' 'animal' 'mode' 'method' 'timescale' 'average' 'std' 'datapoint' 'percentage'};
fprintf(file_,'%s, %s, %s, %s, %s, %s, %s, %s, %s, %s\n',table_{1,:});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Temperature
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gender = 'female';
color = 'green';
measure = 'temperature';
race = 'listerhooded';

rat1 = '6418';
rat2 = '6476';
rat3 = '6495';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp__ = load(append(measure,'_',gender,'_',race,'_',rat1,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
testt = temp';
temperature_female_listerhooded_6418_ms_regular = temperature_(temp)';
disp(size(testt));
disp(size(temperature_female_listerhooded_6418_ms_regular));
save('temperature_female_listerhooded_6418_ms_regular.mat','temperature_female_listerhooded_6418_ms_regular');
clear temp testt

temp = temperature_female_listerhooded_6418_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{2,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_overall_s_regular = nanmean(reshape(temp, 25, 6480000));
save("temperature_female_listerhooded_6418_overall_s_regular.mat", "temperature_female_listerhooded_6418_overall_s_regular")
clear temp

temp = temperature_female_listerhooded_6418_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{3,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear temperature_female_listerhooded_6418_overall_s_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_sampled_s_regular = temp(1:25:end);
save("temperature_female_listerhooded_6418_sampled_s_regular.mat", "temperature_female_listerhooded_6418_sampled_s_regular")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{4,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_overall_m_regular = nanmean(reshape(temp, 1500, 108000));
save("temperature_female_listerhooded_6418_overall_m_regular.mat", "temperature_female_listerhooded_6418_overall_m_regular")
clear temp 

temp = temperature_female_listerhooded_6418_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{5,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_m_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_sampled_m_regular = temp(1:1500:end);
save("temperature_female_listerhooded_6418_sampled_m_regular.mat", "temperature_female_listerhooded_6418_sampled_m_regular")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{6,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_m_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_overall_h_regular = nanmean(reshape(temp, 90000, 1800));
save("temperature_female_listerhooded_6418_overall_h_regular.mat", "temperature_female_listerhooded_6418_overall_h_regular")
clear temp 

temp = temperature_female_listerhooded_6418_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{7,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_h_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_sampled_h_regular = temp(1:90000:end);
save("temperature_female_listerhooded_6418_sampled_h_regular.mat", "temperature_female_listerhooded_6418_sampled_h_regular")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{8,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_h_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_overall_d_regular = nanmean(reshape(temp, 2160000, 75));
save("temperature_female_listerhooded_6418_overall_d_regular.mat", "temperature_female_listerhooded_6418_overall_d_regular")
clear temp 

temp = temperature_female_listerhooded_6418_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{9,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_d_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_ms_light = light_nr(temperature_female_listerhooded_6418_ms_regular')';
save('temperature_female_listerhooded_6418_ms_light.mat','temperature_female_listerhooded_6418_ms_light');
clear temp

temp = temperature_female_listerhooded_6418_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{10,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_light;
temperature_female_listerhooded_6418_overall_s_light = nanmean(reshape(temp, 25, 3240000));
save("temperature_female_listerhooded_6418_overall_s_light.mat", "temperature_female_listerhooded_6418_overall_s_light")
clear temp 

temp = temperature_female_listerhooded_6418_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{11,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear temperature_female_listerhooded_6418_overall_s_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_light;
temperature_female_listerhooded_6418_sampled_s_light = temp(1:25:end);
save("temperature_female_listerhooded_6418_sampled_s_light.mat", "temperature_female_listerhooded_6418_sampled_s_light")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{12,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_s_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_light;
temperature_female_listerhooded_6418_overall_m_light = nanmean(reshape(temp, 1500, 54000));
save("temperature_female_listerhooded_6418_overall_m_light.mat", "temperature_female_listerhooded_6418_overall_m_light")
clear temp 

temp = temperature_female_listerhooded_6418_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{13,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_light;
temperature_female_listerhooded_6418_sampled_m_light = temp(1:1500:end);
save("temperature_female_listerhooded_6418_sampled_m_light.mat", "temperature_female_listerhooded_6418_sampled_m_light")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{14,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_light;
temperature_female_listerhooded_6418_overall_h_light = nanmean(reshape(temp, 90000, 900));
save("temperature_female_listerhooded_6418_overall_h_light.mat", "temperature_female_listerhooded_6418_overall_h_light")
clear temp 

temp = temperature_female_listerhooded_6418_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{15,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_h_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_light;
temperature_female_listerhooded_6418_sampled_h_light = temp(1:90000:end);
save("temperature_female_listerhooded_6418_sampled_h_light.mat", "temperature_female_listerhooded_6418_sampled_h_light")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{16,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_h_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_light;
temperature_female_listerhooded_6418_overall_d_light = nanmean(reshape(temp, 1080000, 75));
save("temperature_female_listerhooded_6418_overall_d_light.mat", "temperature_female_listerhooded_6418_overall_d_light")
clear temp 

temp = temperature_female_listerhooded_6418_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{17,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_d_light


clear temperature_female_listerhooded_6418_ms_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_regular;
temperature_female_listerhooded_6418_ms_dark = dark_nr(temperature_female_listerhooded_6418_ms_regular')';
save('temperature_female_listerhooded_6418_ms_dark.mat','temperature_female_listerhooded_6418_ms_dark');
clear temp

temp = temperature_female_listerhooded_6418_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{18,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_dark;
temperature_female_listerhooded_6418_overall_s_dark = nanmean(reshape(temp, 25, 3240000));
save("temperature_female_listerhooded_6418_overall_s_dark.mat", "temperature_female_listerhooded_6418_overall_s_dark")
clear temp 

temp = temperature_female_listerhooded_6418_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{19,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_s_dark


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_dark;
temperature_female_listerhooded_6418_sampled_s_dark = temp(1:25:end);
save("temperature_female_listerhooded_6418_sampled_s_dark.mat", "temperature_female_listerhooded_6418_sampled_s_dark")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{20,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_s_dark





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_dark;
temperature_female_listerhooded_6418_overall_m_dark = nanmean(reshape(temp, 1500, 54000));
save("temperature_female_listerhooded_6418_overall_m_dark.mat", "temperature_female_listerhooded_6418_overall_m_dark")
clear temp 

temp = temperature_female_listerhooded_6418_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{21,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_dark;
temperature_female_listerhooded_6418_sampled_m_dark = temp(1:1500:end);
save("temperature_female_listerhooded_6418_sampled_m_dark.mat", "temperature_female_listerhooded_6418_sampled_m_dark")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{22,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_dark;
temperature_female_listerhooded_6418_overall_h_dark = nanmean(reshape(temp, 90000, 900));
save("temperature_female_listerhooded_6418_overall_h_dark.mat", "temperature_female_listerhooded_6418_overall_h_dark")
clear temp 

temp = temperature_female_listerhooded_6418_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{23,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_dark;
temperature_female_listerhooded_6418_sampled_h_dark = temp(1:90000:end);
save("temperature_female_listerhooded_6418_sampled_h_dark.mat", "temperature_female_listerhooded_6418_sampled_h_dark")
clear temp 

temp = temperature_female_listerhooded_6418_sampled_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{24,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_sampled_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6418_ms_dark;
temperature_female_listerhooded_6418_overall_d_dark = nanmean(reshape(temp, 1080000, 75));
save("temperature_female_listerhooded_6418_overall_d_dark.mat", "temperature_female_listerhooded_6418_overall_d_dark")
clear temp 

temp = temperature_female_listerhooded_6418_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6418', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{25,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6418_overall_d_dark

clear temperature_female_listerhooded_6418_ms_dark

clear temperature_female_listerhooded_6418_ms_regular





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp__ = load(append(measure,'_',gender,'_',race,'_',rat2,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
testt = temp';
temperature_female_listerhooded_6476_ms_regular = temperature_(temp)';
disp(size(testt));
disp(size(temperature_female_listerhooded_6476_ms_regular));
save('temperature_female_listerhooded_6476_ms_regular.mat','temperature_female_listerhooded_6476_ms_regular');
clear temp testt

temp = temperature_female_listerhooded_6476_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{26,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_overall_s_regular = nanmean(reshape(temp, 25, 6480000));
save("temperature_female_listerhooded_6476_overall_s_regular.mat", "temperature_female_listerhooded_6476_overall_s_regular")
clear temp

temp = temperature_female_listerhooded_6476_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{27,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear temperature_female_listerhooded_6476_overall_s_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_sampled_s_regular = temp(1:25:end);
save("temperature_female_listerhooded_6476_sampled_s_regular.mat", "temperature_female_listerhooded_6476_sampled_s_regular")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{28,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_overall_m_regular = nanmean(reshape(temp, 1500, 108000));
save("temperature_female_listerhooded_6476_overall_m_regular.mat", "temperature_female_listerhooded_6476_overall_m_regular")
clear temp 

temp = temperature_female_listerhooded_6476_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{29,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_m_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_sampled_m_regular = temp(1:1500:end);
save("temperature_female_listerhooded_6476_sampled_m_regular.mat", "temperature_female_listerhooded_6476_sampled_m_regular")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{30,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_m_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_overall_h_regular = nanmean(reshape(temp, 90000, 1800));
save("temperature_female_listerhooded_6476_overall_h_regular.mat", "temperature_female_listerhooded_6476_overall_h_regular")
clear temp 

temp = temperature_female_listerhooded_6476_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{31,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_h_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_sampled_h_regular = temp(1:90000:end);
save("temperature_female_listerhooded_6476_sampled_h_regular.mat", "temperature_female_listerhooded_6476_sampled_h_regular")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{32,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_h_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_overall_d_regular = nanmean(reshape(temp, 2160000, 75));
save("temperature_female_listerhooded_6476_overall_d_regular.mat", "temperature_female_listerhooded_6476_overall_d_regular")
clear temp 

temp = temperature_female_listerhooded_6476_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{33,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_d_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_ms_light = light_nr(temperature_female_listerhooded_6476_ms_regular')';
save('temperature_female_listerhooded_6476_ms_light.mat','temperature_female_listerhooded_6476_ms_light');
clear temp

temp = temperature_female_listerhooded_6476_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{34,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_light;
temperature_female_listerhooded_6476_overall_s_light = nanmean(reshape(temp, 25, 3240000));
save("temperature_female_listerhooded_6476_overall_s_light.mat", "temperature_female_listerhooded_6476_overall_s_light")
clear temp 

temp = temperature_female_listerhooded_6476_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{35,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear temperature_female_listerhooded_6476_overall_s_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_light;
temperature_female_listerhooded_6476_sampled_s_light = temp(1:25:end);
save("temperature_female_listerhooded_6476_sampled_s_light.mat", "temperature_female_listerhooded_6476_sampled_s_light")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{36,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_s_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_light;
temperature_female_listerhooded_6476_overall_m_light = nanmean(reshape(temp, 1500, 54000));
save("temperature_female_listerhooded_6476_overall_m_light.mat", "temperature_female_listerhooded_6476_overall_m_light")
clear temp 

temp = temperature_female_listerhooded_6476_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{37,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_light;
temperature_female_listerhooded_6476_sampled_m_light = temp(1:1500:end);
save("temperature_female_listerhooded_6476_sampled_m_light.mat", "temperature_female_listerhooded_6476_sampled_m_light")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{38,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_light;
temperature_female_listerhooded_6476_overall_h_light = nanmean(reshape(temp, 90000, 900));
save("temperature_female_listerhooded_6476_overall_h_light.mat", "temperature_female_listerhooded_6476_overall_h_light")
clear temp 

temp = temperature_female_listerhooded_6476_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{39,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_h_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_light;
temperature_female_listerhooded_6476_sampled_h_light = temp(1:90000:end);
save("temperature_female_listerhooded_6476_sampled_h_light.mat", "temperature_female_listerhooded_6476_sampled_h_light")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{40,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_h_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_light;
temperature_female_listerhooded_6476_overall_d_light = nanmean(reshape(temp, 1080000, 75));
save("temperature_female_listerhooded_6476_overall_d_light.mat", "temperature_female_listerhooded_6476_overall_d_light")
clear temp 

temp = temperature_female_listerhooded_6476_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{41,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_d_light


clear temperature_female_listerhooded_6476_ms_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_regular;
temperature_female_listerhooded_6476_ms_dark = dark_nr(temperature_female_listerhooded_6476_ms_regular')';
save('temperature_female_listerhooded_6476_ms_dark.mat','temperature_female_listerhooded_6476_ms_dark');
clear temp

temp = temperature_female_listerhooded_6476_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{42,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_dark;
temperature_female_listerhooded_6476_overall_s_dark = nanmean(reshape(temp, 25, 3240000));
save("temperature_female_listerhooded_6476_overall_s_dark.mat", "temperature_female_listerhooded_6476_overall_s_dark")
clear temp 

temp = temperature_female_listerhooded_6476_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{43,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_s_dark


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_dark;
temperature_female_listerhooded_6476_sampled_s_dark = temp(1:25:end);
save("temperature_female_listerhooded_6476_sampled_s_dark.mat", "temperature_female_listerhooded_6476_sampled_s_dark")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{44,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_s_dark





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_dark;
temperature_female_listerhooded_6476_overall_m_dark = nanmean(reshape(temp, 1500, 54000));
save("temperature_female_listerhooded_6476_overall_m_dark.mat", "temperature_female_listerhooded_6476_overall_m_dark")
clear temp 

temp = temperature_female_listerhooded_6476_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{45,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_dark;
temperature_female_listerhooded_6476_sampled_m_dark = temp(1:1500:end);
save("temperature_female_listerhooded_6476_sampled_m_dark.mat", "temperature_female_listerhooded_6476_sampled_m_dark")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{46,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_dark;
temperature_female_listerhooded_6476_overall_h_dark = nanmean(reshape(temp, 90000, 900));
save("temperature_female_listerhooded_6476_overall_h_dark.mat", "temperature_female_listerhooded_6476_overall_h_dark")
clear temp 

temp = temperature_female_listerhooded_6476_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{47,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_dark;
temperature_female_listerhooded_6476_sampled_h_dark = temp(1:90000:end);
save("temperature_female_listerhooded_6476_sampled_h_dark.mat", "temperature_female_listerhooded_6476_sampled_h_dark")
clear temp 

temp = temperature_female_listerhooded_6476_sampled_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{48,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_sampled_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6476_ms_dark;
temperature_female_listerhooded_6476_overall_d_dark = nanmean(reshape(temp, 1080000, 75));
save("temperature_female_listerhooded_6476_overall_d_dark.mat", "temperature_female_listerhooded_6476_overall_d_dark")
clear temp 

temp = temperature_female_listerhooded_6476_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6476', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{49,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6476_overall_d_dark


clear temperature_female_listerhooded_6476_ms_dark


clear temperature_female_listerhooded_6476_ms_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp__ = load(append(measure,'_',gender,'_',race,'_',rat3,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
testt = temp';
temperature_female_listerhooded_6495_ms_regular = temperature_(temp)';
disp(size(testt));
disp(size(temperature_female_listerhooded_6495_ms_regular));
save('temperature_female_listerhooded_6495_ms_regular.mat','temperature_female_listerhooded_6495_ms_regular');
clear temp testt

temp = temperature_female_listerhooded_6495_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{50,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_overall_s_regular = nanmean(reshape(temp, 25, 6480000));
save("temperature_female_listerhooded_6495_overall_s_regular.mat", "temperature_female_listerhooded_6495_overall_s_regular")
clear temp

temp = temperature_female_listerhooded_6495_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{51,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear temperature_female_listerhooded_6495_overall_s_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_sampled_s_regular = temp(1:25:end);
save("temperature_female_listerhooded_6495_sampled_s_regular.mat", "temperature_female_listerhooded_6495_sampled_s_regular")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{52,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_overall_m_regular = nanmean(reshape(temp, 1500, 108000));
save("temperature_female_listerhooded_6495_overall_m_regular.mat", "temperature_female_listerhooded_6495_overall_m_regular")
clear temp 

temp = temperature_female_listerhooded_6495_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{53,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_m_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_sampled_m_regular = temp(1:1500:end);
save("temperature_female_listerhooded_6495_sampled_m_regular.mat", "temperature_female_listerhooded_6495_sampled_m_regular")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{54,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_m_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_overall_h_regular = nanmean(reshape(temp, 90000, 1800));
save("temperature_female_listerhooded_6495_overall_h_regular.mat", "temperature_female_listerhooded_6495_overall_h_regular")
clear temp 

temp = temperature_female_listerhooded_6495_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{55,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_h_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_sampled_h_regular = temp(1:90000:end);
save("temperature_female_listerhooded_6495_sampled_h_regular.mat", "temperature_female_listerhooded_6495_sampled_h_regular")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{56,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_h_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_overall_d_regular = nanmean(reshape(temp, 2160000, 75));
save("temperature_female_listerhooded_6495_overall_d_regular.mat", "temperature_female_listerhooded_6495_overall_d_regular")
clear temp 

temp = temperature_female_listerhooded_6495_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{57,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_d_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_ms_light = light_nr(temperature_female_listerhooded_6495_ms_regular')';
save('temperature_female_listerhooded_6495_ms_light.mat','temperature_female_listerhooded_6495_ms_light');
clear temp

temp = temperature_female_listerhooded_6495_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{58,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_light;
temperature_female_listerhooded_6495_overall_s_light = nanmean(reshape(temp, 25, 3240000));
save("temperature_female_listerhooded_6495_overall_s_light.mat", "temperature_female_listerhooded_6495_overall_s_light")
clear temp 

temp = temperature_female_listerhooded_6495_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{59,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear temperature_female_listerhooded_6495_overall_s_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_light;
temperature_female_listerhooded_6495_sampled_s_light = temp(1:25:end);
save("temperature_female_listerhooded_6495_sampled_s_light.mat", "temperature_female_listerhooded_6495_sampled_s_light")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{60,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_s_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_light;
temperature_female_listerhooded_6495_overall_m_light = nanmean(reshape(temp, 1500, 54000));
save("temperature_female_listerhooded_6495_overall_m_light.mat", "temperature_female_listerhooded_6495_overall_m_light")
clear temp 

temp = temperature_female_listerhooded_6495_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{61,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_light;
temperature_female_listerhooded_6495_sampled_m_light = temp(1:1500:end);
save("temperature_female_listerhooded_6495_sampled_m_light.mat", "temperature_female_listerhooded_6495_sampled_m_light")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{62,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_light;
temperature_female_listerhooded_6495_overall_h_light = nanmean(reshape(temp, 90000, 900));
save("temperature_female_listerhooded_6495_overall_h_light.mat", "temperature_female_listerhooded_6495_overall_h_light")
clear temp 

temp = temperature_female_listerhooded_6495_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{63,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_h_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_light;
temperature_female_listerhooded_6495_sampled_h_light = temp(1:90000:end);
save("temperature_female_listerhooded_6495_sampled_h_light.mat", "temperature_female_listerhooded_6495_sampled_h_light")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{64,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_h_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_light;
temperature_female_listerhooded_6495_overall_d_light = nanmean(reshape(temp, 1080000, 75));
save("temperature_female_listerhooded_6495_overall_d_light.mat", "temperature_female_listerhooded_6495_overall_d_light")
clear temp 

temp = temperature_female_listerhooded_6495_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{65,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_d_light


clear temperature_female_listerhooded_6495_ms_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_regular;
temperature_female_listerhooded_6495_ms_dark = dark_nr(temperature_female_listerhooded_6495_ms_regular')';
save('temperature_female_listerhooded_6495_ms_dark.mat','temperature_female_listerhooded_6495_ms_dark');
clear temp

temp = temperature_female_listerhooded_6495_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{66,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_dark;
temperature_female_listerhooded_6495_overall_s_dark = nanmean(reshape(temp, 25, 3240000));
save("temperature_female_listerhooded_6495_overall_s_dark.mat", "temperature_female_listerhooded_6495_overall_s_dark")
clear temp 

temp = temperature_female_listerhooded_6495_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{67,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_s_dark


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_dark;
temperature_female_listerhooded_6495_sampled_s_dark = temp(1:25:end);
save("temperature_female_listerhooded_6495_sampled_s_dark.mat", "temperature_female_listerhooded_6495_sampled_s_dark")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'sampled', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{68,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_s_dark





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_dark;
temperature_female_listerhooded_6495_overall_m_dark = nanmean(reshape(temp, 1500, 54000));
save("temperature_female_listerhooded_6495_overall_m_dark.mat", "temperature_female_listerhooded_6495_overall_m_dark")
clear temp 

temp = temperature_female_listerhooded_6495_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{69,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_dark;
temperature_female_listerhooded_6495_sampled_m_dark = temp(1:1500:end);
save("temperature_female_listerhooded_6495_sampled_m_dark.mat", "temperature_female_listerhooded_6495_sampled_m_dark")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'sampled', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{70,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_dark;
temperature_female_listerhooded_6495_overall_h_dark = nanmean(reshape(temp, 90000, 900));
save("temperature_female_listerhooded_6495_overall_h_dark.mat", "temperature_female_listerhooded_6495_overall_h_dark")
clear temp 

temp = temperature_female_listerhooded_6495_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{71,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - SAMPLED - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_dark;
temperature_female_listerhooded_6495_sampled_h_dark = temp(1:90000:end);
save("temperature_female_listerhooded_6495_sampled_h_dark.mat", "temperature_female_listerhooded_6495_sampled_h_dark")
clear temp 

temp = temperature_female_listerhooded_6495_sampled_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'sampled', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{72,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_sampled_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = temperature_female_listerhooded_6495_ms_dark;
temperature_female_listerhooded_6495_overall_d_dark = nanmean(reshape(temp, 1080000, 75));
save("temperature_female_listerhooded_6495_overall_d_dark.mat", "temperature_female_listerhooded_6495_overall_d_dark")
clear temp 

temp = temperature_female_listerhooded_6495_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'temperature', 'listerhooded', '6495', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{73,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear temperature_female_listerhooded_6495_overall_d_dark


clear temperature_female_listerhooded_6495_ms_dark


clear temperature_female_listerhooded_6495_ms_regular














%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     position
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gender = 'female';
color = 'green';

race = 'listerhooded';

rat1 = '6418';
rat2 = '6476';
rat3 = '6495';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   BX

measure = 'bx';
temp__ = load(append(measure,'_',gender,'_',race,'_',rat1,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
bx_female_listerhooded_6418_ms_regular = temp';
save('bx_female_listerhooded_6418_ms_regular.mat','bx_female_listerhooded_6418_ms_regular');
clear temp

temp = bx_female_listerhooded_6418_ms_regular;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6418', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{74,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp



temp = bx_female_listerhooded_6418_ms_regular;
bx_female_listerhooded_6418_ms_light = light_nr(bx_female_listerhooded_6418_ms_regular')';
save('bx_female_listerhooded_6418_ms_light.mat','bx_female_listerhooded_6418_ms_light');
clear temp
temp = bx_female_listerhooded_6418_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6418', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{75,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear bx_female_listerhooded_6418_ms_light 





temp = bx_female_listerhooded_6418_ms_regular;
bx_female_listerhooded_6418_ms_dark = dark_nr(bx_female_listerhooded_6418_ms_regular')';
save('bx_female_listerhooded_6418_ms_dark.mat','bx_female_listerhooded_6418_ms_dark');
clear temp
temp = bx_female_listerhooded_6418_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6418', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{76,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear bx_female_listerhooded_6418_ms_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   BY


measure = 'by';
temp__ = load(append(measure,'_',gender,'_',race,'_',rat1,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
by_female_listerhooded_6418_ms_regular = temp';
save('by_female_listerhooded_6418_ms_regular.mat','by_female_listerhooded_6418_ms_regular');
clear temp

temp = by_female_listerhooded_6418_ms_regular;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6418', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{77,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp




temp = by_female_listerhooded_6418_ms_regular;
by_female_listerhooded_6418_ms_light = light_nr(by_female_listerhooded_6418_ms_regular')';
save('by_female_listerhooded_6418_ms_light.mat','by_female_listerhooded_6418_ms_light');
clear temp
temp = by_female_listerhooded_6418_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6418', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{78,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear by_female_listerhooded_6418_ms_light 





temp = by_female_listerhooded_6418_ms_regular;
by_female_listerhooded_6418_ms_dark = dark_nr(by_female_listerhooded_6418_ms_regular')';
save('by_female_listerhooded_6418_ms_dark.mat','by_female_listerhooded_6418_ms_dark');
clear temp
temp = by_female_listerhooded_6418_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6418', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{79,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear by_female_listerhooded_6418_ms_dark






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   DISTANCE TRAVELED



distance_female_listerhooded_6418_ms_regular = distance(bx_female_listerhooded_6418_ms_regular,by_female_listerhooded_6418_ms_regular)';
Q = length(bx_female_listerhooded_6418_ms_regular);
for s_=1:Q
    if isnan(bx_female_listerhooded_6418_ms_regular(s_)) == 1
        distance_female_listerhooded_6418_ms_regular(s_) == NaN;
    end
end
save('distance_female_listerhooded_6418_ms_regular.mat','distance_female_listerhooded_6418_ms_regular');
temp = distance_female_listerhooded_6418_ms_regular;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6418', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{80,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_regular;
distance_female_listerhooded_6418_overall_s_regular = nansum(reshape(temp, 25, 6480000));
save("distance_female_listerhooded_6418_overall_s_regular.mat", "distance_female_listerhooded_6418_overall_s_regular")
clear temp

temp = distance_female_listerhooded_6418_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{81,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_regular;
distance_female_listerhooded_6418_overall_m_regular = nansum(reshape(temp, 1500, 108000));
save("distance_female_listerhooded_6418_overall_m_regular.mat", "distance_female_listerhooded_6418_overall_m_regular")
clear temp

temp = distance_female_listerhooded_6418_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{82,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_m_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_regular;
distance_female_listerhooded_6418_overall_h_regular = nansum(reshape(temp, 90000, 1800));
save("distance_female_listerhooded_6418_overall_h_regular.mat", "distance_female_listerhooded_6418_overall_h_regular")
clear temp

temp = distance_female_listerhooded_6418_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{83,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_h_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_regular;
distance_female_listerhooded_6418_overall_d_regular = nansum(reshape(temp, 2160000, 75));
save("distance_female_listerhooded_6418_overall_d_regular.mat", "distance_female_listerhooded_6418_overall_d_regular")
clear temp

temp = distance_female_listerhooded_6418_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{84,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_d_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


temp = distance_female_listerhooded_6418_ms_regular;
distance_female_listerhooded_6418_ms_light = light_nr(temp')';
save('distance_female_listerhooded_6418_ms_light.mat','distance_female_listerhooded_6418_ms_light');
clear temp
temp = distance_female_listerhooded_6418_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6418', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{85,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_light;
distance_female_listerhooded_6418_overall_s_light = nansum(reshape(temp, 25, 3240000));
save("distance_female_listerhooded_6418_overall_s_light.mat", "distance_female_listerhooded_6418_overall_s_light")
clear temp

temp = distance_female_listerhooded_6418_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{86,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_s_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_light;
distance_female_listerhooded_6418_overall_m_light = nansum(reshape(temp, 1500, 54000));
save("distance_female_listerhooded_6418_overall_m_light.mat", "distance_female_listerhooded_6418_overall_m_light")
clear temp

temp = distance_female_listerhooded_6418_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{87,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_m_light




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_light;
distance_female_listerhooded_6418_overall_h_light = nansum(reshape(temp, 90000, 900));
save("distance_female_listerhooded_6418_overall_h_light.mat", "distance_female_listerhooded_6418_overall_h_light")
clear temp

temp = distance_female_listerhooded_6418_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{88,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_h_light




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_light;
distance_female_listerhooded_6418_overall_d_light = nansum(reshape(temp, 1080000, 75));
save("distance_female_listerhooded_6418_overall_d_light.mat", "distance_female_listerhooded_6418_overall_d_light")
clear temp

temp = distance_female_listerhooded_6418_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{89,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear distance_female_listerhooded_6418_overall_d_light








clear distance_female_listerhooded_6418_ms_light








temp = distance_female_listerhooded_6418_ms_regular;
distance_female_listerhooded_6418_ms_dark = dark_nr(temp')';
save('distance_female_listerhooded_6418_ms_dark.mat','distance_female_listerhooded_6418_ms_dark');
clear temp
temp = distance_female_listerhooded_6418_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6418', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{90,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_dark;
distance_female_listerhooded_6418_overall_s_dark = nansum(reshape(temp, 25, 3240000));
save("distance_female_listerhooded_6418_overall_s_dark.mat", "distance_female_listerhooded_6418_overall_s_dark")
clear temp

temp = distance_female_listerhooded_6418_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{91,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_s_dark

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_dark;
distance_female_listerhooded_6418_overall_m_dark = nansum(reshape(temp, 1500, 54000));
save("distance_female_listerhooded_6418_overall_m_dark.mat", "distance_female_listerhooded_6418_overall_m_dark")
clear temp

temp = distance_female_listerhooded_6418_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{92,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_dark;
distance_female_listerhooded_6418_overall_h_dark = nansum(reshape(temp, 90000, 900));
save("distance_female_listerhooded_6418_overall_h_dark.mat", "distance_female_listerhooded_6418_overall_h_dark")
clear temp

temp = distance_female_listerhooded_6418_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{93,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6418_overall_h_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6418_ms_dark;
distance_female_listerhooded_6418_overall_d_dark = nansum(reshape(temp, 1080000, 75));
save("distance_female_listerhooded_6418_overall_d_dark.mat", "distance_female_listerhooded_6418_overall_d_dark")
clear temp

temp = distance_female_listerhooded_6418_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6418', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{94,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





clear distance_female_listerhooded_6418_overall_d_dark


clear distance_female_listerhooded_6418_ms_dark temp distance_female_listerhooded_6418_ms_regular





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   BX

measure = 'bx';
temp__ = load(append(measure,'_',gender,'_',race,'_',rat2,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
bx_female_listerhooded_6476_ms_regular = temp';
save('bx_female_listerhooded_6476_ms_regular.mat','bx_female_listerhooded_6476_ms_regular');
clear temp

temp = bx_female_listerhooded_6476_ms_regular;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6476', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{95,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp



temp = bx_female_listerhooded_6476_ms_regular;
bx_female_listerhooded_6476_ms_light = light_nr(bx_female_listerhooded_6476_ms_regular')';
save('bx_female_listerhooded_6476_ms_light.mat','bx_female_listerhooded_6476_ms_light');
clear temp
temp = bx_female_listerhooded_6476_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6476', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{96,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear bx_female_listerhooded_6476_ms_light 





temp = bx_female_listerhooded_6476_ms_regular;
bx_female_listerhooded_6476_ms_dark = dark_nr(bx_female_listerhooded_6476_ms_regular')';
save('bx_female_listerhooded_6476_ms_dark.mat','bx_female_listerhooded_6476_ms_dark');
clear temp
temp = bx_female_listerhooded_6476_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6476', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{97,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear bx_female_listerhooded_6476_ms_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   BY


measure = 'by';
temp__ = load(append(measure,'_',gender,'_',race,'_',rat2,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
by_female_listerhooded_6476_ms_regular = temp';
save('by_female_listerhooded_6476_ms_regular.mat','by_female_listerhooded_6476_ms_regular');
clear temp

temp = by_female_listerhooded_6476_ms_regular;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6476', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{98,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp




temp = by_female_listerhooded_6476_ms_regular;
by_female_listerhooded_6476_ms_light = light_nr(by_female_listerhooded_6476_ms_regular')';
save('by_female_listerhooded_6476_ms_light.mat','by_female_listerhooded_6476_ms_light');
clear temp
temp = by_female_listerhooded_6476_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6476', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{99,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear by_female_listerhooded_6476_ms_light 





temp = by_female_listerhooded_6476_ms_regular;
by_female_listerhooded_6476_ms_dark = dark_nr(by_female_listerhooded_6476_ms_regular')';
save('by_female_listerhooded_6476_ms_dark.mat','by_female_listerhooded_6476_ms_dark');
clear temp
temp = by_female_listerhooded_6476_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6476', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{100,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear by_female_listerhooded_6476_ms_dark






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   DISTANCE TRAVELED



distance_female_listerhooded_6476_ms_regular = distance(bx_female_listerhooded_6476_ms_regular,by_female_listerhooded_6476_ms_regular)';
Q = length(bx_female_listerhooded_6476_ms_regular);
for s_=1:Q
    if isnan(bx_female_listerhooded_6476_ms_regular(s_)) == 1
        distance_female_listerhooded_6476_ms_regular(s_) == NaN;
    end
end
save('distance_female_listerhooded_6476_ms_regular.mat','distance_female_listerhooded_6476_ms_regular');
temp = distance_female_listerhooded_6476_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6476', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{101,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_regular;
distance_female_listerhooded_6476_overall_s_regular = nansum(reshape(temp, 25, 6480000));
save("distance_female_listerhooded_6476_overall_s_regular.mat", "distance_female_listerhooded_6476_overall_s_regular")
clear temp

temp = distance_female_listerhooded_6476_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{102,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_regular;
distance_female_listerhooded_6476_overall_m_regular = nansum(reshape(temp, 1500, 108000));
save("distance_female_listerhooded_6476_overall_m_regular.mat", "distance_female_listerhooded_6476_overall_m_regular")
clear temp

temp = distance_female_listerhooded_6476_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{103,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_m_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_regular;
distance_female_listerhooded_6476_overall_h_regular = nansum(reshape(temp, 90000, 1800));
save("distance_female_listerhooded_6476_overall_h_regular.mat", "distance_female_listerhooded_6476_overall_h_regular")
clear temp

temp = distance_female_listerhooded_6476_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{104,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_h_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_regular;
distance_female_listerhooded_6476_overall_d_regular = nansum(reshape(temp, 2160000, 75));
save("distance_female_listerhooded_6476_overall_d_regular.mat", "distance_female_listerhooded_6476_overall_d_regular")
clear temp

temp = distance_female_listerhooded_6476_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{105,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_d_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


temp = distance_female_listerhooded_6476_ms_regular;
distance_female_listerhooded_6476_ms_light = light_nr(temp')';
save('distance_female_listerhooded_6476_ms_light.mat','distance_female_listerhooded_6476_ms_light');
clear temp
temp = distance_female_listerhooded_6476_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6476', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{106,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_light;
distance_female_listerhooded_6476_overall_s_light = nansum(reshape(temp, 25, 3240000));
save("distance_female_listerhooded_6476_overall_s_light.mat", "distance_female_listerhooded_6476_overall_s_light")
clear temp

temp = distance_female_listerhooded_6476_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{107,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_s_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_light;
distance_female_listerhooded_6476_overall_m_light = nansum(reshape(temp, 1500, 54000));
save("distance_female_listerhooded_6476_overall_m_light.mat", "distance_female_listerhooded_6476_overall_m_light")
clear temp

temp = distance_female_listerhooded_6476_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{108,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_m_light




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_light;
distance_female_listerhooded_6476_overall_h_light = nansum(reshape(temp, 90000, 900));
save("distance_female_listerhooded_6476_overall_h_light.mat", "distance_female_listerhooded_6476_overall_h_light")
clear temp

temp = distance_female_listerhooded_6476_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{109,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_h_light




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_light;
distance_female_listerhooded_6476_overall_d_light = nansum(reshape(temp, 1080000, 75));
save("distance_female_listerhooded_6476_overall_d_light.mat", "distance_female_listerhooded_6476_overall_d_light")
clear temp

temp = distance_female_listerhooded_6476_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{110,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear distance_female_listerhooded_6476_overall_d_light








clear distance_female_listerhooded_6476_ms_light








temp = distance_female_listerhooded_6476_ms_regular;
distance_female_listerhooded_6476_ms_dark = dark_nr(temp')';
save('distance_female_listerhooded_6476_ms_dark.mat','distance_female_listerhooded_6476_ms_dark');
clear temp
temp = distance_female_listerhooded_6476_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6476', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{111,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_dark;
distance_female_listerhooded_6476_overall_s_dark = nansum(reshape(temp, 25, 3240000));
save("distance_female_listerhooded_6476_overall_s_dark.mat", "distance_female_listerhooded_6476_overall_s_dark")
clear temp

temp = distance_female_listerhooded_6476_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{112,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_s_dark

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_dark;
distance_female_listerhooded_6476_overall_m_dark = nansum(reshape(temp, 1500, 54000));
save("distance_female_listerhooded_6476_overall_m_dark.mat", "distance_female_listerhooded_6476_overall_m_dark")
clear temp

temp = distance_female_listerhooded_6476_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{113,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_dark;
distance_female_listerhooded_6476_overall_h_dark = nansum(reshape(temp, 90000, 900));
save("distance_female_listerhooded_6476_overall_h_dark.mat", "distance_female_listerhooded_6476_overall_h_dark")
clear temp

temp = distance_female_listerhooded_6476_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{114,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6476_overall_h_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6476_ms_dark;
distance_female_listerhooded_6476_overall_d_dark = nansum(reshape(temp, 1080000, 75));
save("distance_female_listerhooded_6476_overall_d_dark.mat", "distance_female_listerhooded_6476_overall_d_dark")
clear temp

temp = distance_female_listerhooded_6476_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6476', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{115,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





clear distance_female_listerhooded_6476_overall_d_dark



clear distance_female_listerhooded_6476_ms_dark temp distance_female_listerhooded_6476_ms_regular







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   BX

measure = 'bx';
temp__ = load(append(measure,'_',gender,'_',race,'_',rat3,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
bx_female_listerhooded_6495_ms_regular = temp';
save('bx_female_listerhooded_6495_ms_regular.mat','bx_female_listerhooded_6495_ms_regular');
clear temp

temp = bx_female_listerhooded_6495_ms_regular;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6495', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{116,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp



temp = bx_female_listerhooded_6495_ms_regular;
bx_female_listerhooded_6495_ms_light = light_nr(bx_female_listerhooded_6495_ms_regular')';
save('bx_female_listerhooded_6495_ms_light.mat','bx_female_listerhooded_6495_ms_light');
clear temp
temp = bx_female_listerhooded_6495_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6495', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{117,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear bx_female_listerhooded_6495_ms_light 





temp = bx_female_listerhooded_6495_ms_regular;
bx_female_listerhooded_6495_ms_dark = dark_nr(bx_female_listerhooded_6495_ms_regular')';
save('bx_female_listerhooded_6495_ms_dark.mat','bx_female_listerhooded_6495_ms_dark');
clear temp
temp = bx_female_listerhooded_6495_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'bx', 'listerhooded', '6495', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{118,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear bx_female_listerhooded_6495_ms_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   BY


measure = 'by';
temp__ = load(append(measure,'_',gender,'_',race,'_',rat3,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
by_female_listerhooded_6495_ms_regular = temp';
save('by_female_listerhooded_6495_ms_regular.mat','by_female_listerhooded_6495_ms_regular');
clear temp

temp = by_female_listerhooded_6495_ms_regular;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6495', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{119,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp




temp = by_female_listerhooded_6495_ms_regular;
by_female_listerhooded_6495_ms_light = light_nr(by_female_listerhooded_6495_ms_regular')';
save('by_female_listerhooded_6495_ms_light.mat','by_female_listerhooded_6495_ms_light');
clear temp
temp = by_female_listerhooded_6495_ms_light;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6495', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{120,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear by_female_listerhooded_6495_ms_light 





temp = by_female_listerhooded_6495_ms_regular;
by_female_listerhooded_6495_ms_dark = dark_nr(by_female_listerhooded_6495_ms_regular')';
save('by_female_listerhooded_6495_ms_dark.mat','by_female_listerhooded_6495_ms_dark');
clear temp
temp = by_female_listerhooded_6495_ms_dark;
temp_ave = NaN;
temp_std = NaN;
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'by', 'listerhooded', '6495', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{121,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear by_female_listerhooded_6495_ms_dark






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   DISTANCE TRAVELED



distance_female_listerhooded_6495_ms_regular = distance(bx_female_listerhooded_6495_ms_regular,by_female_listerhooded_6495_ms_regular)';
Q = length(bx_female_listerhooded_6495_ms_regular);
for s_=1:Q
    if isnan(bx_female_listerhooded_6495_ms_regular(s_)) == 1
        distance_female_listerhooded_6495_ms_regular(s_) == NaN;
    end
end
save('distance_female_listerhooded_6495_ms_regular.mat','distance_female_listerhooded_6495_ms_regular');
temp = distance_female_listerhooded_6495_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6495', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{122,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_regular;
distance_female_listerhooded_6495_overall_s_regular = nansum(reshape(temp, 25, 6480000));
save("distance_female_listerhooded_6495_overall_s_regular.mat", "distance_female_listerhooded_6495_overall_s_regular")
clear temp

temp = distance_female_listerhooded_6495_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{123,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_regular;
distance_female_listerhooded_6495_overall_m_regular = nansum(reshape(temp, 1500, 108000));
save("distance_female_listerhooded_6495_overall_m_regular.mat", "distance_female_listerhooded_6495_overall_m_regular")
clear temp

temp = distance_female_listerhooded_6495_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{124,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_m_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_regular;
distance_female_listerhooded_6495_overall_h_regular = nansum(reshape(temp, 90000, 1800));
save("distance_female_listerhooded_6495_overall_h_regular.mat", "distance_female_listerhooded_6495_overall_h_regular")
clear temp

temp = distance_female_listerhooded_6495_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{125,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_h_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_regular;
distance_female_listerhooded_6495_overall_d_regular = nansum(reshape(temp, 2160000, 75));
save("distance_female_listerhooded_6495_overall_d_regular.mat", "distance_female_listerhooded_6495_overall_d_regular")
clear temp

temp = distance_female_listerhooded_6495_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{126,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_d_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LIGHT


temp = distance_female_listerhooded_6495_ms_regular;
distance_female_listerhooded_6495_ms_light = light_nr(temp')';
save('distance_female_listerhooded_6495_ms_light.mat','distance_female_listerhooded_6495_ms_light');
clear temp


temp = distance_female_listerhooded_6495_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6495', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{127,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_light;
distance_female_listerhooded_6495_overall_s_light = nansum(reshape(temp, 25, 3240000));
save("distance_female_listerhooded_6495_overall_s_light.mat", "distance_female_listerhooded_6495_overall_s_light")
clear temp

temp = distance_female_listerhooded_6495_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{128,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_s_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_light;
distance_female_listerhooded_6495_overall_m_light = nansum(reshape(temp, 1500, 54000));
save("distance_female_listerhooded_6495_overall_m_light.mat", "distance_female_listerhooded_6495_overall_m_light")
clear temp

temp = distance_female_listerhooded_6495_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{129,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_m_light




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_light;
distance_female_listerhooded_6495_overall_h_light = nansum(reshape(temp, 90000, 900));
save("distance_female_listerhooded_6495_overall_h_light.mat", "distance_female_listerhooded_6495_overall_h_light")
clear temp

temp = distance_female_listerhooded_6495_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{130,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_h_light




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_light;
distance_female_listerhooded_6495_overall_d_light = nansum(reshape(temp, 1080000, 75));
save("distance_female_listerhooded_6495_overall_d_light.mat", "distance_female_listerhooded_6495_overall_d_light")
clear temp

temp = distance_female_listerhooded_6495_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{131,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear distance_female_listerhooded_6495_overall_d_light








clear distance_female_listerhooded_6495_ms_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DARK




temp = distance_female_listerhooded_6495_ms_regular;
distance_female_listerhooded_6495_ms_dark = dark_nr(temp')';
save('distance_female_listerhooded_6495_ms_dark.mat','distance_female_listerhooded_6495_ms_dark');
clear temp
temp = distance_female_listerhooded_6495_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'Distance', 'listerhooded', '6495', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{132,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_dark;
distance_female_listerhooded_6495_overall_s_dark = nansum(reshape(temp, 25, 3240000));
save("distance_female_listerhooded_6495_overall_s_dark.mat", "distance_female_listerhooded_6495_overall_s_dark")
clear temp

temp = distance_female_listerhooded_6495_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{133,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_s_dark

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_dark;
distance_female_listerhooded_6495_overall_m_dark = nansum(reshape(temp, 1500, 54000));
save("distance_female_listerhooded_6495_overall_m_dark.mat", "distance_female_listerhooded_6495_overall_m_dark")
clear temp

temp = distance_female_listerhooded_6495_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{134,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_m_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - Hour
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_dark;
distance_female_listerhooded_6495_overall_h_dark = nansum(reshape(temp, 90000, 900));
save("distance_female_listerhooded_6495_overall_h_dark.mat", "distance_female_listerhooded_6495_overall_h_dark")
clear temp

temp = distance_female_listerhooded_6495_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{135,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp


clear distance_female_listerhooded_6495_overall_h_dark




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = distance_female_listerhooded_6495_ms_dark;
distance_female_listerhooded_6495_overall_d_dark = nansum(reshape(temp, 1080000, 75));
save("distance_female_listerhooded_6495_overall_d_dark.mat", "distance_female_listerhooded_6495_overall_d_dark")
clear temp

temp = distance_female_listerhooded_6495_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(nonzeros(temp));
temp_perc = (length(nonzeros(temp))/length(temp))*100;
table_temp = {'distance', 'listerhooded', '6495', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{136,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





clear distance_female_listerhooded_6495_overall_d_dark




clear distance_female_listerhooded_6495_ms_dark distance_female_listerhooded_6495_ms_regular











%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  SOCIAL INTERACTION



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RAT1 RAT2


separation_female_listerhooded_6418_6476_ms_regular = separation(bx_female_listerhooded_6418_ms_regular,bx_female_listerhooded_6476_ms_regular,by_female_listerhooded_6418_ms_regular,by_female_listerhooded_6476_ms_regular)';
save('separation_female_listerhooded_6418_6476_ms_regular.mat','separation_female_listerhooded_6418_6476_ms_regular');

temp = separation_female_listerhooded_6418_6476_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{137,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_regular;
separation_female_listerhooded_6418_6476_s_regular = nanmean(reshape(temp, 25, 6480000));
save("separation_female_listerhooded_6418_6476_s_regular.mat", "separation_female_listerhooded_6418_6476_s_regular")
clear temp

temp = separation_female_listerhooded_6418_6476_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{138,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_regular;
separation_female_listerhooded_6418_6476_m_regular = nanmean(reshape(temp, 1500, 108000));
save("separation_female_listerhooded_6418_6476_m_regular.mat", "separation_female_listerhooded_6418_6476_m_regular")
clear temp

temp = separation_female_listerhooded_6418_6476_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{139,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_m_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_regular;
separation_female_listerhooded_6418_6476_h_regular = nanmean(reshape(temp, 90000, 1800));
save("separation_female_listerhooded_6418_6476_h_regular.mat", "separation_female_listerhooded_6418_6476_h_regular")
clear temp

temp = separation_female_listerhooded_6418_6476_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{140,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_h_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_regular;
separation_female_listerhooded_6418_6476_d_regular = nanmean(reshape(temp, 2160000, 75));
save("separation_female_listerhooded_6418_6476_d_regular.mat", "separation_female_listerhooded_6418_6476_d_regular")
clear temp

temp = separation_female_listerhooded_6418_6476_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{141,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_d_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LIGHT


temp = separation_female_listerhooded_6418_6476_ms_regular;
separation_female_listerhooded_6418_6476_ms_light = light_nr(temp')';
save('separation_female_listerhooded_6418_6476_ms_light.mat','separation_female_listerhooded_6418_6476_ms_light');
clear temp

temp = separation_female_listerhooded_6418_6476_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{142,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_light;
separation_female_listerhooded_6418_6476_s_light = nanmean(reshape(temp, 25, 3240000));
save("separation_female_listerhooded_6418_6476_s_light.mat", "separation_female_listerhooded_6418_6476_s_light")
clear temp

temp = separation_female_listerhooded_6418_6476_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{143,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_s_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_light;
separation_female_listerhooded_6418_6476_m_light = nanmean(reshape(temp, 1500, 54000));
save("separation_female_listerhooded_6418_6476_m_light.mat", "separation_female_listerhooded_6418_6476_m_light")
clear temp

temp = separation_female_listerhooded_6418_6476_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{144,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_light;
separation_female_listerhooded_6418_6476_h_light = nanmean(reshape(temp, 90000, 900));
save("separation_female_listerhooded_6418_6476_h_light.mat", "separation_female_listerhooded_6418_6476_h_light")
clear temp

temp = separation_female_listerhooded_6418_6476_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{145,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_h_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_light;
separation_female_listerhooded_6418_6476_d_light = nanmean(reshape(temp, 1080000, 75));
save("separation_female_listerhooded_6418_6476_d_light.mat", "separation_female_listerhooded_6418_6476_d_light")
clear temp

temp = separation_female_listerhooded_6418_6476_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{146,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_d_light



clear separation_female_listerhooded_6418_6476_ms_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DARK


temp = separation_female_listerhooded_6418_6476_ms_regular;
separation_female_listerhooded_6418_6476_ms_dark = dark_nr(temp')';
save('separation_female_listerhooded_6418_6476_ms_dark.mat','separation_female_listerhooded_6418_6476_ms_dark');
clear temp



temp = separation_female_listerhooded_6418_6476_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{147,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_dark;
separation_female_listerhooded_6418_6476_s_dark = nanmean(reshape(temp, 25, 3240000));
save("separation_female_listerhooded_6418_6476_s_dark.mat", "separation_female_listerhooded_6418_6476_s_dark")
clear temp

temp = separation_female_listerhooded_6418_6476_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{148,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_s_dark

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_dark;
separation_female_listerhooded_6418_6476_m_dark = nanmean(reshape(temp, 1500, 54000));
save("separation_female_listerhooded_6418_6476_m_dark.mat", "separation_female_listerhooded_6418_6476_m_dark")
clear temp

temp = separation_female_listerhooded_6418_6476_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{149,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_m_dark


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_dark;
separation_female_listerhooded_6418_6476_h_dark = nanmean(reshape(temp, 90000, 900));
save("separation_female_listerhooded_6418_6476_h_dark.mat", "separation_female_listerhooded_6418_6476_h_dark")
clear temp

temp = separation_female_listerhooded_6418_6476_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{150,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6476_ms_dark;
separation_female_listerhooded_6418_6476_d_dark = nanmean(reshape(temp, 1080000, 75));
save("separation_female_listerhooded_6418_6476_d_dark.mat", "separation_female_listerhooded_6418_6476_d_dark")
clear temp

temp = separation_female_listerhooded_6418_6476_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6476', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{151,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6476_d_dark


clear separation_female_listerhooded_6418_6476_ms_dark separation_female_listerhooded_6418_6476_ms_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RAT1 RAT3


separation_female_listerhooded_6418_6495_ms_regular = separation(bx_female_listerhooded_6418_ms_regular,bx_female_listerhooded_6495_ms_regular,by_female_listerhooded_6418_ms_regular,by_female_listerhooded_6495_ms_regular)';
save('separation_female_listerhooded_6418_6495_ms_regular.mat','separation_female_listerhooded_6418_6495_ms_regular');

temp = separation_female_listerhooded_6418_6495_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{152,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_regular;
separation_female_listerhooded_6418_6495_s_regular = nanmean(reshape(temp, 25, 6480000));
save("separation_female_listerhooded_6418_6495_s_regular.mat", "separation_female_listerhooded_6418_6495_s_regular")
clear temp

temp = separation_female_listerhooded_6418_6495_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{153,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_regular;
separation_female_listerhooded_6418_6495_m_regular = nanmean(reshape(temp, 1500, 108000));
save("separation_female_listerhooded_6418_6495_m_regular.mat", "separation_female_listerhooded_6418_6495_m_regular")
clear temp

temp = separation_female_listerhooded_6418_6495_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{154,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_m_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_regular;
separation_female_listerhooded_6418_6495_h_regular = nanmean(reshape(temp, 90000, 1800));
save("separation_female_listerhooded_6418_6495_h_regular.mat", "separation_female_listerhooded_6418_6495_h_regular")
clear temp

temp = separation_female_listerhooded_6418_6495_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{155,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_h_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_regular;
separation_female_listerhooded_6418_6495_d_regular = nanmean(reshape(temp, 2160000, 75));
save("separation_female_listerhooded_6418_6495_d_regular.mat", "separation_female_listerhooded_6418_6495_d_regular")
clear temp

temp = separation_female_listerhooded_6418_6495_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{156,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_d_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LIGHT


temp = separation_female_listerhooded_6418_6495_ms_regular;
separation_female_listerhooded_6418_6495_ms_light = light_nr(temp')';
save('separation_female_listerhooded_6418_6495_ms_light.mat','separation_female_listerhooded_6418_6495_ms_light');
clear temp

temp = separation_female_listerhooded_6418_6495_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{157,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_light;
separation_female_listerhooded_6418_6495_s_light = nanmean(reshape(temp, 25, 3240000));
save("separation_female_listerhooded_6418_6495_s_light.mat", "separation_female_listerhooded_6418_6495_s_light")
clear temp

temp = separation_female_listerhooded_6418_6495_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{158,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_s_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_light;
separation_female_listerhooded_6418_6495_m_light = nanmean(reshape(temp, 1500, 54000));
save("separation_female_listerhooded_6418_6495_m_light.mat", "separation_female_listerhooded_6418_6495_m_light")
clear temp

temp = separation_female_listerhooded_6418_6495_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{159,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_light;
separation_female_listerhooded_6418_6495_h_light = nanmean(reshape(temp, 90000, 900));
save("separation_female_listerhooded_6418_6495_h_light.mat", "separation_female_listerhooded_6418_6495_h_light")
clear temp

temp = separation_female_listerhooded_6418_6495_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{160,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_h_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_light;
separation_female_listerhooded_6418_6495_d_light = nanmean(reshape(temp, 1080000, 75));
save("separation_female_listerhooded_6418_6495_d_light.mat", "separation_female_listerhooded_6418_6495_d_light")
clear temp

temp = separation_female_listerhooded_6418_6495_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{161,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_d_light



clear separation_female_listerhooded_6418_6495_ms_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DARK


temp = separation_female_listerhooded_6418_6495_ms_regular;
separation_female_listerhooded_6418_6495_ms_dark = dark_nr(temp')';
save('separation_female_listerhooded_6418_6495_ms_dark.mat','separation_female_listerhooded_6418_6495_ms_dark');
clear temp



temp = separation_female_listerhooded_6418_6495_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{162,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_dark;
separation_female_listerhooded_6418_6495_s_dark = nanmean(reshape(temp, 25, 3240000));
save("separation_female_listerhooded_6418_6495_s_dark.mat", "separation_female_listerhooded_6418_6495_s_dark")
clear temp

temp = separation_female_listerhooded_6418_6495_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{163,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_s_dark

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_dark;
separation_female_listerhooded_6418_6495_m_dark = nanmean(reshape(temp, 1500, 54000));
save("separation_female_listerhooded_6418_6495_m_dark.mat", "separation_female_listerhooded_6418_6495_m_dark")
clear temp

temp = separation_female_listerhooded_6418_6495_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{164,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_m_dark


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_dark;
separation_female_listerhooded_6418_6495_h_dark = nanmean(reshape(temp, 90000, 900));
save("separation_female_listerhooded_6418_6495_h_dark.mat", "separation_female_listerhooded_6418_6495_h_dark")
clear temp

temp = separation_female_listerhooded_6418_6495_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{165,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6418_6495_ms_dark;
separation_female_listerhooded_6418_6495_d_dark = nanmean(reshape(temp, 1080000, 75));
save("separation_female_listerhooded_6418_6495_d_dark.mat", "separation_female_listerhooded_6418_6495_d_dark")
clear temp

temp = separation_female_listerhooded_6418_6495_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6418_6495', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{166,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6418_6495_d_dark


clear separation_female_listerhooded_6418_6495_ms_dark separation_female_listerhooded_6418_6495_ms_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% RAT2 RAT3

separation_female_listerhooded_6476_6495_ms_regular = separation(bx_female_listerhooded_6476_ms_regular,bx_female_listerhooded_6495_ms_regular,by_female_listerhooded_6476_ms_regular,by_female_listerhooded_6495_ms_regular)';
save('separation_female_listerhooded_6476_6495_ms_regular.mat','separation_female_listerhooded_6476_6495_ms_regular');

temp = separation_female_listerhooded_6476_6495_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{167,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_regular;
separation_female_listerhooded_6476_6495_s_regular = nanmean(reshape(temp, 25, 6480000));
save("separation_female_listerhooded_6476_6495_s_regular.mat", "separation_female_listerhooded_6476_6495_s_regular")
clear temp

temp = separation_female_listerhooded_6476_6495_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{168,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_s_regular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_regular;
separation_female_listerhooded_6476_6495_m_regular = nanmean(reshape(temp, 1500, 108000));
save("separation_female_listerhooded_6476_6495_m_regular.mat", "separation_female_listerhooded_6476_6495_m_regular")
clear temp

temp = separation_female_listerhooded_6476_6495_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{169,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_m_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_regular;
separation_female_listerhooded_6476_6495_h_regular = nanmean(reshape(temp, 90000, 1800));
save("separation_female_listerhooded_6476_6495_h_regular.mat", "separation_female_listerhooded_6476_6495_h_regular")
clear temp

temp = separation_female_listerhooded_6476_6495_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{170,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_h_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_regular;
separation_female_listerhooded_6476_6495_d_regular = nanmean(reshape(temp, 2160000, 75));
save("separation_female_listerhooded_6476_6495_d_regular.mat", "separation_female_listerhooded_6476_6495_d_regular")
clear temp

temp = separation_female_listerhooded_6476_6495_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{171,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_d_regular


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LIGHT


temp = separation_female_listerhooded_6476_6495_ms_regular;
separation_female_listerhooded_6476_6495_ms_light = light_nr(temp')';
save('separation_female_listerhooded_6476_6495_ms_light.mat','separation_female_listerhooded_6476_6495_ms_light');
clear temp

temp = separation_female_listerhooded_6476_6495_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{172,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_light;
separation_female_listerhooded_6476_6495_s_light = nanmean(reshape(temp, 25, 3240000));
save("separation_female_listerhooded_6476_6495_s_light.mat", "separation_female_listerhooded_6476_6495_s_light")
clear temp

temp = separation_female_listerhooded_6476_6495_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{173,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_s_light

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_light;
separation_female_listerhooded_6476_6495_m_light = nanmean(reshape(temp, 1500, 54000));
save("separation_female_listerhooded_6476_6495_m_light.mat", "separation_female_listerhooded_6476_6495_m_light")
clear temp

temp = separation_female_listerhooded_6476_6495_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{174,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_m_light


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_light;
separation_female_listerhooded_6476_6495_h_light = nanmean(reshape(temp, 90000, 900));
save("separation_female_listerhooded_6476_6495_h_light.mat", "separation_female_listerhooded_6476_6495_h_light")
clear temp

temp = separation_female_listerhooded_6476_6495_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{175,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_h_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LGITH - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_light;
separation_female_listerhooded_6476_6495_d_light = nanmean(reshape(temp, 1080000, 75));
save("separation_female_listerhooded_6476_6495_d_light.mat", "separation_female_listerhooded_6476_6495_d_light")
clear temp

temp = separation_female_listerhooded_6476_6495_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{176,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_d_light



clear separation_female_listerhooded_6476_6495_ms_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DARK


temp = separation_female_listerhooded_6476_6495_ms_regular;
separation_female_listerhooded_6476_6495_ms_dark = dark_nr(temp')';
save('separation_female_listerhooded_6476_6495_ms_dark.mat','separation_female_listerhooded_6476_6495_ms_dark');
clear temp



temp = separation_female_listerhooded_6476_6495_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{177,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_dark;
separation_female_listerhooded_6476_6495_s_dark = nanmean(reshape(temp, 25, 3240000));
save("separation_female_listerhooded_6476_6495_s_dark.mat", "separation_female_listerhooded_6476_6495_s_dark")
clear temp

temp = separation_female_listerhooded_6476_6495_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{178,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_s_dark

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_dark;
separation_female_listerhooded_6476_6495_m_dark = nanmean(reshape(temp, 1500, 54000));
save("separation_female_listerhooded_6476_6495_m_dark.mat", "separation_female_listerhooded_6476_6495_m_dark")
clear temp

temp = separation_female_listerhooded_6476_6495_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{179,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_m_dark


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_dark;
separation_female_listerhooded_6476_6495_h_dark = nanmean(reshape(temp, 90000, 900));
save("separation_female_listerhooded_6476_6495_h_dark.mat", "separation_female_listerhooded_6476_6495_h_dark")
clear temp

temp = separation_female_listerhooded_6476_6495_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{180,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - DARK - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = separation_female_listerhooded_6476_6495_ms_dark;
separation_female_listerhooded_6476_6495_d_dark = nanmean(reshape(temp, 1080000, 75));
save("separation_female_listerhooded_6476_6495_d_dark.mat", "separation_female_listerhooded_6476_6495_d_dark")
clear temp

temp = separation_female_listerhooded_6476_6495_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'separation', 'listerhooded', '6476_6495', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{181,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
clear separation_female_listerhooded_6476_6495_d_dark


clear separation_female_listerhooded_6476_6495_ms_dark separation_female_listerhooded_6476_6495_ms_regular












clear bx_female_listerhooded_6418_ms_regular by_female_listerhooded_6418_ms_regular


clear bx_female_listerhooded_6476_ms_regular by_female_listerhooded_6476_ms_regular


clear bx_female_listerhooded_6495_ms_regular by_female_listerhooded_6495_ms_regular








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Drinking
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gender = 'female';
color = 'green';
measure = 'drinking';
race = 'listerhooded';

rat1 = '6418';
rat2 = '6476';
rat3 = '6495';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





temp__ = load(append(measure,'_',gender,'_',race,'_',rat1,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
drinking_female_listerhooded_6418_ms_regular = temp';
save('drinking_female_listerhooded_6418_ms_regular.mat','drinking_female_listerhooded_6418_ms_regular');
clear temp testt

temp = drinking_female_listerhooded_6418_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{182,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_ms_regular;
drinking_female_listerhooded_6418_overall_s_regular = temp(1:25:end);
save("drinking_female_listerhooded_6418_overall_s_regular.mat", "drinking_female_listerhooded_6418_overall_s_regular")
clear temp

temp = drinking_female_listerhooded_6418_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{183,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_regular;
drinking_female_listerhooded_6418_overall_m_regular = nansum(reshape(temp, 60, 108000));
save("drinking_female_listerhooded_6418_overall_m_regular.mat", "drinking_female_listerhooded_6418_overall_m_regular")
clear temp 

temp = drinking_female_listerhooded_6418_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{184,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_m_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_regular;
drinking_female_listerhooded_6418_overall_h_regular = nansum(reshape(temp, 3600, 1800));
save("drinking_female_listerhooded_6418_overall_h_regular.mat", "drinking_female_listerhooded_6418_overall_h_regular")
clear temp 

temp = drinking_female_listerhooded_6418_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{185,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_h_regular





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_regular;
drinking_female_listerhooded_6418_overall_d_regular = nansum(reshape(temp, 86400, 75));
save("drinking_female_listerhooded_6418_overall_d_regular.mat", "drinking_female_listerhooded_6418_overall_d_regular")
clear temp 

temp = drinking_female_listerhooded_6418_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{186,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_d_regular


clear drinking_female_listerhooded_6418_overall_s_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp = drinking_female_listerhooded_6418_ms_regular;
drinking_female_listerhooded_6418_ms_light = light_nr(drinking_female_listerhooded_6418_ms_regular')';
save('drinking_female_listerhooded_6418_ms_light.mat','drinking_female_listerhooded_6418_ms_light');
clear temp

temp = drinking_female_listerhooded_6418_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{187,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_ms_light;
drinking_female_listerhooded_6418_overall_s_light = temp(1:25:end);
save("drinking_female_listerhooded_6418_overall_s_light.mat", "drinking_female_listerhooded_6418_overall_s_light")
clear temp 

temp = drinking_female_listerhooded_6418_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{188,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_light;
drinking_female_listerhooded_6418_overall_m_light = nansum(reshape(temp, 60, 54000));
save("drinking_female_listerhooded_6418_overall_m_light.mat", "drinking_female_listerhooded_6418_overall_m_light")
clear temp 

temp = drinking_female_listerhooded_6418_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{189,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_m_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_light;
drinking_female_listerhooded_6418_overall_h_light = nansum(reshape(temp, 3600, 900));
save("drinking_female_listerhooded_6418_overall_h_light.mat", "drinking_female_listerhooded_6418_overall_h_light")
clear temp 

temp = drinking_female_listerhooded_6418_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{190,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_h_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_light;
drinking_female_listerhooded_6418_overall_d_light = nansum(reshape(temp, 43200, 75));
save("drinking_female_listerhooded_6418_overall_d_light.mat", "drinking_female_listerhooded_6418_overall_d_light")
clear temp 

temp = drinking_female_listerhooded_6418_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{191,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_d_light


clear drinking_female_listerhooded_6418_ms_light


clear drinking_female_listerhooded_6418_overall_s_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp = drinking_female_listerhooded_6418_ms_regular;
drinking_female_listerhooded_6418_ms_dark = dark_nr(drinking_female_listerhooded_6418_ms_regular')';
save('drinking_female_listerhooded_6418_ms_dark.mat','drinking_female_listerhooded_6418_ms_dark');
clear temp

temp = drinking_female_listerhooded_6418_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{187,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_ms_dark;
drinking_female_listerhooded_6418_overall_s_dark = temp(1:25:end);
save("drinking_female_listerhooded_6418_overall_s_dark.mat", "drinking_female_listerhooded_6418_overall_s_dark")
clear temp 

temp = drinking_female_listerhooded_6418_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{188,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_dark;
drinking_female_listerhooded_6418_overall_m_dark = nansum(reshape(temp, 60, 54000));
save("drinking_female_listerhooded_6418_overall_m_dark.mat", "drinking_female_listerhooded_6418_overall_m_dark")
clear temp 

temp = drinking_female_listerhooded_6418_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{189,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_m_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_dark;
drinking_female_listerhooded_6418_overall_h_dark = nansum(reshape(temp, 3600, 900));
save("drinking_female_listerhooded_6418_overall_h_dark.mat", "drinking_female_listerhooded_6418_overall_h_dark")
clear temp 

temp = drinking_female_listerhooded_6418_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{190,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6418_overall_s_dark;
drinking_female_listerhooded_6418_overall_d_dark = nansum(reshape(temp, 43200, 75));
save("drinking_female_listerhooded_6418_overall_d_dark.mat", "drinking_female_listerhooded_6418_overall_d_dark")
clear temp 

temp = drinking_female_listerhooded_6418_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6418', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{191,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6418_overall_d_dark


clear drinking_female_listerhooded_6418_ms_dark


clear drinking_female_listerhooded_6418_overall_s_dark

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp__ = load(append(measure,'_',gender,'_',race,'_',rat2,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
drinking_female_listerhooded_6476_ms_regular = temp';
save('drinking_female_listerhooded_6476_ms_regular.mat','drinking_female_listerhooded_6476_ms_regular');
clear temp testt

temp = drinking_female_listerhooded_6476_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{182,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_ms_regular;
drinking_female_listerhooded_6476_overall_s_regular = temp(1:25:end);
save("drinking_female_listerhooded_6476_overall_s_regular.mat", "drinking_female_listerhooded_6476_overall_s_regular")
clear temp

temp = drinking_female_listerhooded_6476_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{183,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_regular;
drinking_female_listerhooded_6476_overall_m_regular = nansum(reshape(temp, 60, 108000));
save("drinking_female_listerhooded_6476_overall_m_regular.mat", "drinking_female_listerhooded_6476_overall_m_regular")
clear temp 

temp = drinking_female_listerhooded_6476_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{184,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_m_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_regular;
drinking_female_listerhooded_6476_overall_h_regular = nansum(reshape(temp, 3600, 1800));
save("drinking_female_listerhooded_6476_overall_h_regular.mat", "drinking_female_listerhooded_6476_overall_h_regular")
clear temp 

temp = drinking_female_listerhooded_6476_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{185,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_h_regular





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_regular;
drinking_female_listerhooded_6476_overall_d_regular = nansum(reshape(temp, 86400, 75));
save("drinking_female_listerhooded_6476_overall_d_regular.mat", "drinking_female_listerhooded_6476_overall_d_regular")
clear temp 

temp = drinking_female_listerhooded_6476_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{186,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_d_regular


clear drinking_female_listerhooded_6476_overall_s_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp = drinking_female_listerhooded_6476_ms_regular;
drinking_female_listerhooded_6476_ms_light = light_nr(drinking_female_listerhooded_6476_ms_regular')';
save('drinking_female_listerhooded_6476_ms_light.mat','drinking_female_listerhooded_6476_ms_light');
clear temp

temp = drinking_female_listerhooded_6476_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{187,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_ms_light;
drinking_female_listerhooded_6476_overall_s_light = temp(1:25:end);
save("drinking_female_listerhooded_6476_overall_s_light.mat", "drinking_female_listerhooded_6476_overall_s_light")
clear temp 

temp = drinking_female_listerhooded_6476_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{188,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_light;
drinking_female_listerhooded_6476_overall_m_light = nansum(reshape(temp, 60, 54000));
save("drinking_female_listerhooded_6476_overall_m_light.mat", "drinking_female_listerhooded_6476_overall_m_light")
clear temp 

temp = drinking_female_listerhooded_6476_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{189,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_m_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_light;
drinking_female_listerhooded_6476_overall_h_light = nansum(reshape(temp, 3600, 900));
save("drinking_female_listerhooded_6476_overall_h_light.mat", "drinking_female_listerhooded_6476_overall_h_light")
clear temp 

temp = drinking_female_listerhooded_6476_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{190,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_h_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_light;
drinking_female_listerhooded_6476_overall_d_light = nansum(reshape(temp, 43200, 75));
save("drinking_female_listerhooded_6476_overall_d_light.mat", "drinking_female_listerhooded_6476_overall_d_light")
clear temp 

temp = drinking_female_listerhooded_6476_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{191,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_d_light


clear drinking_female_listerhooded_6476_ms_light


clear drinking_female_listerhooded_6476_overall_s_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp = drinking_female_listerhooded_6476_ms_regular;
drinking_female_listerhooded_6476_ms_dark = dark_nr(drinking_female_listerhooded_6476_ms_regular')';
save('drinking_female_listerhooded_6476_ms_dark.mat','drinking_female_listerhooded_6476_ms_dark');
clear temp

temp = drinking_female_listerhooded_6476_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{187,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_ms_dark;
drinking_female_listerhooded_6476_overall_s_dark = temp(1:25:end);
save("drinking_female_listerhooded_6476_overall_s_dark.mat", "drinking_female_listerhooded_6476_overall_s_dark")
clear temp 

temp = drinking_female_listerhooded_6476_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{188,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_dark;
drinking_female_listerhooded_6476_overall_m_dark = nansum(reshape(temp, 60, 54000));
save("drinking_female_listerhooded_6476_overall_m_dark.mat", "drinking_female_listerhooded_6476_overall_m_dark")
clear temp 

temp = drinking_female_listerhooded_6476_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{189,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_m_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_dark;
drinking_female_listerhooded_6476_overall_h_dark = nansum(reshape(temp, 3600, 900));
save("drinking_female_listerhooded_6476_overall_h_dark.mat", "drinking_female_listerhooded_6476_overall_h_dark")
clear temp 

temp = drinking_female_listerhooded_6476_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{190,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6476_overall_s_dark;
drinking_female_listerhooded_6476_overall_d_dark = nansum(reshape(temp, 43200, 75));
save("drinking_female_listerhooded_6476_overall_d_dark.mat", "drinking_female_listerhooded_6476_overall_d_dark")
clear temp 

temp = drinking_female_listerhooded_6476_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6476', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{191,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6476_overall_d_dark


clear drinking_female_listerhooded_6476_ms_dark


clear drinking_female_listerhooded_6476_overall_s_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   RAT3
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





temp__ = load(append(measure,'_',gender,'_',race,'_',rat3,'.mat'));
temp_ = fieldnames(temp__);
temp = temp__.(temp_{1});
clear temp__ temp_
drinking_female_listerhooded_6495_ms_regular = temp';
save('drinking_female_listerhooded_6495_ms_regular.mat','drinking_female_listerhooded_6495_ms_regular');
clear temp testt

temp = drinking_female_listerhooded_6495_ms_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'regular', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{182,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_ms_regular;
drinking_female_listerhooded_6495_overall_s_regular = temp(1:25:end);
save("drinking_female_listerhooded_6495_overall_s_regular.mat", "drinking_female_listerhooded_6495_overall_s_regular")
clear temp

temp = drinking_female_listerhooded_6495_overall_s_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'regular', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{183,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_regular;
drinking_female_listerhooded_6495_overall_m_regular = nansum(reshape(temp, 60, 108000));
save("drinking_female_listerhooded_6495_overall_m_regular.mat", "drinking_female_listerhooded_6495_overall_m_regular")
clear temp 

temp = drinking_female_listerhooded_6495_overall_m_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'regular', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{184,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_m_regular



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_regular;
drinking_female_listerhooded_6495_overall_h_regular = nansum(reshape(temp, 3600, 1800));
save("drinking_female_listerhooded_6495_overall_h_regular.mat", "drinking_female_listerhooded_6495_overall_h_regular")
clear temp 

temp = drinking_female_listerhooded_6495_overall_h_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'regular', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{185,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_h_regular





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - REGULAR - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_regular;
drinking_female_listerhooded_6495_overall_d_regular = nansum(reshape(temp, 86400, 75));
save("drinking_female_listerhooded_6495_overall_d_regular.mat", "drinking_female_listerhooded_6495_overall_d_regular")
clear temp 

temp = drinking_female_listerhooded_6495_overall_d_regular;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'regular', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{186,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_d_regular


clear drinking_female_listerhooded_6495_overall_s_regular




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp = drinking_female_listerhooded_6495_ms_regular;
drinking_female_listerhooded_6495_ms_light = light_nr(drinking_female_listerhooded_6495_ms_regular')';
save('drinking_female_listerhooded_6495_ms_light.mat','drinking_female_listerhooded_6495_ms_light');
clear temp

temp = drinking_female_listerhooded_6495_ms_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'light', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{187,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_ms_light;
drinking_female_listerhooded_6495_overall_s_light = temp(1:25:end);
save("drinking_female_listerhooded_6495_overall_s_light.mat", "drinking_female_listerhooded_6495_overall_s_light")
clear temp 

temp = drinking_female_listerhooded_6495_overall_s_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'light', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{188,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_light;
drinking_female_listerhooded_6495_overall_m_light = nansum(reshape(temp, 60, 54000));
save("drinking_female_listerhooded_6495_overall_m_light.mat", "drinking_female_listerhooded_6495_overall_m_light")
clear temp 

temp = drinking_female_listerhooded_6495_overall_m_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'light', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{189,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_m_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_light;
drinking_female_listerhooded_6495_overall_h_light = nansum(reshape(temp, 3600, 900));
save("drinking_female_listerhooded_6495_overall_h_light.mat", "drinking_female_listerhooded_6495_overall_h_light")
clear temp 

temp = drinking_female_listerhooded_6495_overall_h_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'light', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{190,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_h_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - LIGHT - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_light;
drinking_female_listerhooded_6495_overall_d_light = nansum(reshape(temp, 43200, 75));
save("drinking_female_listerhooded_6495_overall_d_light.mat", "drinking_female_listerhooded_6495_overall_d_light")
clear temp 

temp = drinking_female_listerhooded_6495_overall_d_light;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'light', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{191,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_d_light


clear drinking_female_listerhooded_6495_ms_light


clear drinking_female_listerhooded_6495_overall_s_light



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



temp = drinking_female_listerhooded_6495_ms_regular;
drinking_female_listerhooded_6495_ms_dark = dark_nr(drinking_female_listerhooded_6495_ms_regular')';
save('drinking_female_listerhooded_6495_ms_dark.mat','drinking_female_listerhooded_6495_ms_dark');
clear temp

temp = drinking_female_listerhooded_6495_ms_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'dark', 'overall', 'ms', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{187,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - SECOND
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_ms_dark;
drinking_female_listerhooded_6495_overall_s_dark = temp(1:25:end);
save("drinking_female_listerhooded_6495_overall_s_dark.mat", "drinking_female_listerhooded_6495_overall_s_dark")
clear temp 

temp = drinking_female_listerhooded_6495_overall_s_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'dark', 'overall', 's', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{188,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - MINUTE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_dark;
drinking_female_listerhooded_6495_overall_m_dark = nansum(reshape(temp, 60, 54000));
save("drinking_female_listerhooded_6495_overall_m_dark.mat", "drinking_female_listerhooded_6495_overall_m_dark")
clear temp 

temp = drinking_female_listerhooded_6495_overall_m_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'dark', 'overall', 'm', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{189,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_m_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - HOUR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_dark;
drinking_female_listerhooded_6495_overall_h_dark = nansum(reshape(temp, 3600, 900));
save("drinking_female_listerhooded_6495_overall_h_dark.mat", "drinking_female_listerhooded_6495_overall_h_dark")
clear temp 

temp = drinking_female_listerhooded_6495_overall_h_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'dark', 'overall', 'h', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{190,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_h_dark



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   INDIVIDUAL - dark - OVERALL - DAY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temp = drinking_female_listerhooded_6495_overall_s_dark;
drinking_female_listerhooded_6495_overall_d_dark = nansum(reshape(temp, 43200, 75));
save("drinking_female_listerhooded_6495_overall_d_dark.mat", "drinking_female_listerhooded_6495_overall_d_dark")
clear temp 

temp = drinking_female_listerhooded_6495_overall_d_dark;
temp_ave = nanmean(temp);
temp_std = nanstd(temp);
temp_dp =  length(temp(~isnan(temp)));
temp_perc = (length(temp(~isnan(temp)))/length(temp))*100;
table_temp = {'drinking', 'listerhooded', '6495', 'dark', 'overall', 'd', [temp_ave], [temp_std], [temp_dp], [temp_perc]};
table_ = vertcat(table_,table_temp);
fprintf(file_,'%s, %s, %s, %s, %s, %s, %f, %f, %f, %f\n',table_{191,:});
clear temp temp_ave temp_std temp_dp temp_perc table_temp

clear drinking_female_listerhooded_6495_overall_d_dark


clear drinking_female_listerhooded_6495_ms_dark


clear drinking_female_listerhooded_6495_overall_s_dark


clear drinking_female_listerhooded_6418_ms_regular
clear drinking_female_listerhooded_6476_ms_regular
clear drinking_female_listerhooded_6495_ms_regular







fclose(file_);
clear gender color race rat1 rat2 rat3 measure table_ file_


clear Q s_ 







function temperature1 = temperature_(X)
    temp = X;
    checker = 0;
    temperature1 = double.empty();
    for i = 1:75
        temp_ = temp(checker+1:i*90000*24);
        temp__ = movmedian(temp_,5000);
        temperature1 = horzcat(temperature1, temp__);
        checker = checker+(90000*24);
        clear temp_ temp__
    end
    clear checker temp i
end









function dms = distance(X,Y)
    Q = length(X);
    dms = zeros(1,Q);
    for s=1:length(X)
        if isnan(X(s))
            X(s) = 0;
        end
    end
    for s=1:length(Y)
        if isnan(Y(s))
            Y(s) = 0;
        end
    end
        clear s;
    X = X';
    Y = Y';
    for k = 2:Q
        dms(1,k) = sqrt( ( X( 1,k ) - X( 1,k-1 ) )^2+( Y( 1,k ) - Y( 1,k-1 ) )^2);
    end
end





function dms = separation(X1, X2, Y1 ,Y2)
    Q = length(X1);
    dms = zeros(1,Q);
    X1 = X1';
    X2 = X2';
    Y1 = Y1';
    Y2 = Y2';
    for k = 1:Q
        if (isnan(X1(k)) || isnan(X2(k))|| isnan(Y1(k))|| isnan(Y2(k))) == 1
            dms(1,k) = NaN;
        end
        if (isnan(X1(k)) && isnan(X2(k)) && isnan(Y1(k))  && isnan(Y2(k))) == 0 
            dms(1,k) = sqrt( ( X2( 1,k ) - X1( 1,k ) )^2+( Y2( 1,k ) - Y1( 1,k ) )^2);
        end
    end
end






%%%%%%%%%%%%%%% New run special Dark: 9am to 9pm and Light: 9pm to 9am
function X_dark = dark_nr(X)
    % First 9 hours of firstday (light)
    X_dark = double.empty();
    temp = X(1:810000);
    X_dark = horzcat(temp, X_dark);
    clear temp;
    for n=1:74
        initial_temp = (9*90000) + (90000 * (((2*n -1)*12)))+1 ;
        final_temp = (initial_temp-1 + (12*90000));
        temp = X(initial_temp:final_temp);
%     initial = cat(1,initial,initial_temp);
%     final = cat(1,final,final_temp);
        X_dark = horzcat(X_dark, temp);
    end
    % Last 3 hours of 40thday
    temp = X(161730001:end);
    X_dark = horzcat(X_dark, temp);
    clear n temp initial_temp final_temp temp1 temp2;
end




function X_light = light_nr(X)
    X_light = double.empty();
    for n=1:75
        initial_temp = (9*90000) + (90000 * ((2*(n -1)*12)))+1 ;
        final_temp = (initial_temp-1 + (12*90000));
%     disp(initial_temp);
%     disp(final_temp);
        temp = X(initial_temp:final_temp);
%     initial = cat(initial,initial_temp);
%     final = [final, final_temp];
        X_light = horzcat(X_light, temp);
    end
    clear n temp initial_temp final_temp;
end






%%%%%%%%%%%%%%% Sprague Dawley special Dark: 8pm to 8am and Light: 8am to 8pm
function X_dark = dark_nr(X)
    X_dark = double.empty();
    for n=1:75
        initial_temp = (8*90000) + (90000 * ((2*(n -1)*12)))+1 ;
        final_temp = (initial_temp-1 + (12*90000));
%     disp(initial_temp);
%     disp(final_temp);
        temp = X(initial_temp:final_temp);
%     initial = cat(initial,initial_temp);
%     final = [final, final_temp];
        X_dark = horzcat(X_dark, temp);
    end
    clear n temp initial_temp final_temp;
end



function X_light = light_nr(X)
    % First 8 hours of firstday (asleep)
    X_light = double.empty();
    temp = X(1:720000);
    X_light = horzcat(temp, X_light);
    clear temp;
    for n=1:74
%        disp(n)
        initial_temp = (8*90000) + (90000 * (((2*n -1)*12)))+1;
        final_temp = (initial_temp-1 + (12*90000));
        temp = X(initial_temp:final_temp);
%     initial = cat(1,initial,initial_temp);
%     final = cat(1,final,final_temp);
        X_light = horzcat(X_light, temp);
    end
    % Last 4 hours of 40thday
    temp = X(161640001:end);
    X_light = horzcat(X_light, temp);
    clear n temp initial_temp final_temp temp1 temp2;
end
