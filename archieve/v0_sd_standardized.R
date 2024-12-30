#library(earlywarnings)
library(R.matlab)
library(ggplot2)
library(pracma)
library(plotly)
library(gtable)
library(gridExtra)
library(ggthemes)
library(grid)
library(lattice)
library(cowplot)
library(viridis)
library(zoo)
library(lmtest)
library(identity)
library(aTSA)



signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_1f <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_1f <- diff(signal_1f, difference =1)


signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_2f <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_2f <- diff(signal_2f, difference =1)


signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_female_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_3f <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_3f <- diff(signal_3f, difference =1)


signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_female_spraguedawley_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_4f <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_4f <- diff(signal_4f, difference =1)



signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/temperature_male_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_1m <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_1m <- diff(signal_1m, difference =1)


signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/distance_male_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_2m <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_2m <- diff(signal_2m, difference =1)


signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/drinking_male_spraguedawley_overall_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_3m <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_3m <- diff(signal_3m, difference =1)


signal = readMat("~/second_step/Neuronal Convergence Dropbox//ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_h/socialinteraction_male_spraguedawley_h_regular_mean.mat")
S <- unlist(signal)
x <- 1:1800
signal_r <- interp1(x,S, method = "linear")
signal_4m <- (signal_r - mean(signal_r,na.rm = TRUE) ) / sd(signal_r,na.rm = TRUE)
signal_4m <- diff(signal_4m, difference =1)





##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  FIRST ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################


res <- movpotential_ews(signal_1f, param = signal_2f, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_01 <- p +
  labs(title = element_blank(),x = element_text("female's temperature"), y = element_text("female's distance traveled")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    #   axis.text.x = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    #   axis.text.y = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_1f, param = signal_3f, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_02 <- p +
  labs(title = element_blank(),x = element_text("female's temperature"), y = element_text("female's drinking time")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_1f, param = signal_4f, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_03 <- p +
  labs(title = element_blank(),x = element_text("female's temperature"), y = element_text("female's social interaction")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )


##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  SECOND ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################


res <- movpotential_ews(signal_2f, param = signal_3f, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_04 <- p +
  labs(title = element_blank(),x = element_text("female's distance traveled"), y = element_text("female's drinking time")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )





res <- movpotential_ews(signal_2f, param = signal_4f, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_05 <- p +
  labs(title = element_blank(),x = element_text("female's distance traveled"), y = element_text("female's social interaction")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )






res <- movpotential_ews(signal_3f, param = signal_4f, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_06 <- p +
  labs(title = element_blank(),x = element_text("female's drinking time"), y = element_text("female's social interaction")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )






##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  THIRD ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################



res <- movpotential_ews(signal_1m, param = signal_2m, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_07 <- p +
  labs(title = element_blank(),x = element_text("male's temperature"), y = element_text("male's distance traveled")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_1m, param = signal_3m, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw()
g_08 <- p +
  labs(title = element_blank(),x = element_text("male's temperature"), y = element_text("male's drinking time")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_1m, param = signal_4m, bw = "bcv", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_09 <- p +
  labs(title = element_blank(),x = element_text("male's temperature"), y = element_text("male's social interaction")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )


##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  FOURTH ROW
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################


res <- movpotential_ews(signal_2m, param = signal_3m, bw = "bcv", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_10 <- p +
  labs(title = element_blank(),x = element_text("male's distance traveled"), y = element_text("male's drinking time")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_2m, param = signal_4m, bw = "bcv", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2.0, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)

p <- res[["plot"]] + theme_bw() 
g_11 <- p +
  labs(title = element_blank(),x = element_text("male's distance traveled"), y = element_text("male's social interaction")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )



res <- movpotential_ews(signal_3m, param = signal_4m, bw = "nrd", bw.adjust = 1,
                        detection.threshold = 0.1, std = 2, grid.size = 75, plot.cutoff = 0.5,
                        plot.contours = TRUE, binwidth = 0.2, bins = NULL)
p <- res[["plot"]] + theme_bw() 
g_12 <- p +
  labs(title = element_blank(),x = element_text("male's drinking time"), y = element_text("male's social interaction")) +
  theme(
    strip.text = element_blank(),
    rect = element_blank(),
    axis.text.x = element_blank(),
    axis.ticks.x = element_blank(),
    axis.text.y = element_blank(),
    axis.ticks.y = element_blank(),
    panel.border = element_rect(colour = "black"),
    panel.grid.major = element_blank(), panel.grid.minor = element_blank()
  )






##################################################################
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################  ARRANGING THE PLOT
##################################################################
##################################################################
##################################################################
##################################################################
##################################################################








plot <- plot_grid(g_01, g_02 ,g_03, g_04, g_05, g_06 , g_07, g_08, g_09, g_10 ,g_11, g_12+ theme(panel.border = element_rect(colour = "black")),
                  align = "hv",labels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"),
                  nrow = 4, ncol=3)




#create common x and y labels

y.grob <- textGrob("State variable I", 
                   gp=gpar(fontface="bold", col="black", fontsize=15), rot=90)

x.grob <- textGrob("State variable II",
                   gp=gpar(fontface="bold", col="black", fontsize=15))

#add to plot

g <- grid.arrange(arrangeGrob(plot, left = y.grob, bottom = x.grob))
ggsave("sd_virdiscontin_h_standardized_0.png", g, width = 40, height = 40, units = "cm")












