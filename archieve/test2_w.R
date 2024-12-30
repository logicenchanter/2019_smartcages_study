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
library(ggsci)
library(scales)
library(purrr)

cols <- pal_npg("nrc", alpha = 0.7)(10)

signal <- readMat("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/potential/task2/timeseries_s/socialinteraction_male_wistar_s_regular_mean.mat")
S <- unlist(signal)
#plot(x=signal_r)
x <- 1:6480000
signal_real <- data.frame(time = x, temperature = S)
x <- ddjnonparam_ews(signal_real, bandwidth = 0.6, na = 500, logtransform = FALSE, interpolate = TRUE)

x1 = data.frame("avec", "S2.vec", "TotVar.dx.vec", "Diff2.vec", "LamdaZ.vec", x["avec"], x["S2.vec"], x["TotVar.dx.vec"], x["Diff2.vec"], x["LamdaZ.vec"])
x2 = data.frame("Tvec1", "S2.t", "TotVar.t", "Diff2.t", "Lamda.t", x["Tvec1"], x["S2.t"], x["TotVar.t"], x["Diff2.t"], x["Lamda.t"]) 



p1_1 <- ggplot() + 
  geom_line(data=x1, aes(x=avec, y=S2.vec), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank()
    # axis.ticks.x = element_blank()
     # panel.border = element_blank()
  )+ labs(x = "" , y = "Conditional variance")
theme(axis.line = element_line(color = 'black')) + theme(legend.position="bottom") 

p1_2 <- ggplot() + 
  geom_line(data=x1, aes(x=avec, y=TotVar.dx.vec), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank(),
    # axis.ticks.x = element_blank()
     # panel.border = element_blank()
  )+ labs(x = "" , y = "Total variance")
theme(axis.line = element_line(color = 'black')) 


p2_1 <- ggplot() + 
  geom_line(data=x1, aes(x=avec, y=Diff2.vec), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank(),
    # axis.ticks.x = element_blank()
    #  panel.border = element_blank()
  )+ labs(x = "" , y = "Diffusion")
theme(axis.line = element_line(color = 'black')) 

p2_2 <- ggplot() + 
  geom_line(data=x1, aes(x=avec, y=LamdaZ.vec), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank(),
    # axis.ticks.x = element_blank()
    #  panel.border = element_blank()
  )+ labs(x = "" , y = "Jump intenstity")
theme(axis.line = element_line(color = 'black')) 



plot <- plot_grid(
  # row 1
  plot_grid(p1_1, nrow = 1, labels = c('M')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  plot_grid(p1_2, nrow = 1, labels = c('N')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  plot_grid(p2_1, nrow = 1, labels = c('O')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  plot_grid(p2_2, nrow = 1, labels = c('P')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  nrow = 2, ncol =2
)




y.grob <- textGrob("Indicators",   
                   gp=gpar(fontface="bold", col="black", fontsize=15), rot=90)

x.grob <- textGrob("Values",  
                   gp=gpar(fontface="bold", col="black", fontsize=15))

#add to plot

g <- grid.arrange(arrangeGrob(plot, left = y.grob, bottom = x.grob))




ggsave("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/nonparam/socialinteraction_male_w_avec.png", g, width = 20, height = 20, units = "cm", dpi = 900)















p1_1 <- ggplot() + 
geom_line(data=x2, aes(x=Tvec1, y=S2.t), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank()
    # axis.ticks.x = element_blank()
    # panel.border = element_blank()
  )+ labs(x = "" , y = "Conditional variance")
theme(axis.line = element_line(color = 'black')) + theme(legend.position="bottom") 

p1_2 <- ggplot() + 
  geom_line(data=x2, aes(x=Tvec1, y=TotVar.t), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank(),
    # axis.ticks.x = element_blank()
    # panel.border = element_blank()
  )+ labs(x = "" , y = "Total variance")
theme(axis.line = element_line(color = 'black')) 


p2_1 <- ggplot() + 
  geom_line(data=x2, aes(x=Tvec1, y=Diff2.t), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank(),
    # axis.ticks.x = element_blank()
    #  panel.border = element_blank()
  )+ labs(x = "" , y = "Diffusion")
theme(axis.line = element_line(color = 'black')) 

p2_2 <- ggplot() + 
  geom_line(data=x2, aes(x=Tvec1, y=Lamda.t), color = cols[9], size = 1.5, lty = "solid") +
  geom_point(shape=21, fill=cols[9], color=cols[9], size=3) +
  theme_bw() +
  theme(
    plot.background = element_blank(),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
    # axis.text.x = element_blank(),
    # axis.ticks.x = element_blank()
    #  panel.border = element_blank()
  )+ labs(x = "" , y = "Jump intenstity")
theme(axis.line = element_line(color = 'black')) 



plot <- plot_grid(
  # row 1
  plot_grid(p1_1, nrow = 1, labels = c('M')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  plot_grid(p1_2, nrow = 1, labels = c('N')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  plot_grid(p2_1, nrow = 1, labels = c('O')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  plot_grid(p2_2, nrow = 1, labels = c('P')) +
    theme(plot.background = element_rect(color = "black", size = 2) ,
          plot.margin = margin(t = 0.4, r = 0.4, b = 0.4, l = 0.4, unit = "cm")),
  nrow = 2, ncol =2
)




y.grob <- textGrob("Indicators",   
                   gp=gpar(fontface="bold", col="black", fontsize=15), rot=90)

x.grob <- textGrob("Time (s)",  
                   gp=gpar(fontface="bold", col="black", fontsize=15))

#add to plot

g <- grid.arrange(arrangeGrob(plot, left = y.grob, bottom = x.grob))




ggsave("~/second_step/Neuronal Convergence Dropbox/ILD2019/Paper/files and more/timeseries_75/0-plots/nonparam/socialinteraction_male_w_tvec.png", g, width = 20, height = 20, units = "cm", dpi = 900)

