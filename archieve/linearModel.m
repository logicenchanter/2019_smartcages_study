lme = fitlme(tbl,'temperature ~  time + race*gender + (time|race:gender)')

lmet = fitlme(tbl,'temperature ~  race*gender + (time|race:gender)')

lmex = fitlme(tbl,'temperature ~  time + race*gender')

r2=compare(lmet,lme)


anova(lme)
