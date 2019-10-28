######################################################
# 培训课程：鹿明生物_R生信小班_R基础绘图实战    #
# 讲师：北极星                                       #
# 时间：2019-10-25 Friday                            #
print("绘图脚本执行日期为：")                        #
date()                                               #
######################################################
#
## 脚本运行计时开始
pt=proc.time()
#
## 一、设置当前工作目录
getwd() # 查询当前R的工作目录
setwd("./") # 设置R的工作目录

## 二、绘图脚本
############################################
## 1.点图
############################################
# 设置工作目录到点图目录：1.point_or_scatter_diagram
setwd("1.point_or_scatter_diagram")

### 1.1 查看点图数据（R内置数据集）mtcars
data("mtcars")
class(mtcars)
# [1] "data.frame"
dim(mtcars)
# [1] 32 11
head(mtcars)
#               mpg cyl disp  hp drat    wt  qsec vs am gear carb
# Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
# Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
str(mtcars) # 查看数据结构
# 'data.frame':	32 obs. of  11 variables:
# $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
# $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
# $ disp: num  160 160 108 258 360 ...
# $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
# $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
# $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
# $ qsec: num  16.5 17 18.6 19.4 17 ...
# $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
# $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
# $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
# $ carb: num  4 4 1 1 2 1 4 2 2 4 ...

### 1.2 plot()绘制点图
#### 1.2.1 版本一点图
plot(mtcars$mpg, mtcars$disp)
#### 1.2.2 版本二点图
plot(mtcars$mpg, mtcars$disp, col = "blue")
#### 1.2.3 版本三点图
plot(mtcars$mpg, mtcars$disp, type = "p", col = factor(mtcars$cyl), xlab = "Miles/(US) gallon(mpg)", ylab = "Displacement (cu.in.)(disp)", main = "mpg-disp point plot")
#### 1.2.4 版本四点图
plot(mtcars$mpg, mtcars$disp, type = "p", col = factor(mtcars$cyl), xlab = "Miles/(US) gallon(mpg)", ylab = "Displacement (cu.in.)(disp)", main = "mpg-disp point plot", lwd = 10)
#### 1.2.5 点图进阶，版本五
plot(mtcars$mpg, mtcars$disp, type = "p", pch = mtcars$cyl, cex = 2, col = factor(mtcars$cyl), xlab = "Miles/(US) gallon(mpg)", ylab = "Displacement (cu.in.)(disp)", main = "Data mtcars of mpg-disp Point Diagram", col.main = "darkblue", font.main = 9, cex.main = 2,  lwd = 1, bg = "grey", lty = 2, axes = TRUE)
#### 1.2.6 绘制图例
legend(32, 480, legend = c("4", "6", "8"), pch= mtcars$cyl, title= "mtcars", col = c("green", "red", "black"), bg = "lightgrey")
#### 1.2.7 填加注释
text(x = c(15,20,30), y = c(400,200,150), labels = c("cyl = 4", "cyl = 6", "cyl = 8"), cex = 2, col = c("green", "red", "black"))

### 1.3 保存图片
#### 1.3.1 保存图片为pdf格式
pdf(file = "Data mtcars of mpg-disp Point Diagram.pdf", width = 8.5, height = 8.5)
plot(mtcars$mpg, mtcars$disp, type = "p", pch = mtcars$cyl, cex = 2, col = factor(mtcars$cyl), xlab = "Miles/(US) gallon(mpg)", ylab = "Displacement (cu.in.)(disp)", main = "Data mtcars of mpg-disp Point Diagram", col.main = "darkblue", font.main = 9, cex.main = 2,  lwd = 1, bg = "grey", lty = 2, axes = TRUE)
legend(32, 480, legend = c("4", "6", "8"), pch= mtcars$cyl, title= "mtcars", col = c("green", "red", "black"), bg = "lightgrey")
text(x = c(15,20,30), y = c(400,200,150), labels = c("cyl = 4", "cyl = 6", "cyl = 8"), cex = 2, col = c("green", "red", "black"))
dev.off()

#### 1.3.2 保存图片为png格式
png(file = "Data mtcars of mpg-disp Point Diagram.png", width = 850, height = 850)
plot(mtcars$mpg, mtcars$disp, type = "p", pch = mtcars$cyl, cex = 2, col = factor(mtcars$cyl), xlab = "Miles/(US) gallon(mpg)", ylab = "Displacement (cu.in.)(disp)", main = "Data mtcars of mpg-disp Point Diagram", col.main = "darkblue", font.main = 9, cex.main = 2,  lwd = 1, bg = "grey", lty = 2, axes = TRUE)
legend(32, 480, legend = c("4", "6", "8"), pch= mtcars$cyl, title= "mtcars", col = c("green", "red", "black"), bg = "lightgrey")
text(x = c(15,20,30), y = c(400,200,150), labels = c("cyl = 4", "cyl = 6", "cyl = 8"), cex = 2, col = c("green", "red", "black"))
dev.off()

### 1.4 ggplot()绘制点图
### 安装ggplot2
# install.packages("ggplot2")，已经安装的就不需要再安装了
### 导入ggplot2包
library(ggplot2)

#### 1.4.1 版本一点图
ggplot(mtcars,aes(mpg,disp)) +
  geom_point()

#### 1.4.2 版本二点图（有问题）
ggplot(mtcars,aes(mpg,disp,col = mtcars$cyl)) +
  geom_point()

#### 1.4.3 版本三点图
ggplot(mtcars,aes(mpg,disp,col = factor(mtcars$cyl))) + geom_point()

#### 1.4.4 版本四点图
ggplot(mtcars,aes(mpg,disp, col = factor(mtcars$cyl))) + geom_point(aes(shape = factor(mtcars$cyl),size = 5))

#### 1.4.5 点图进阶，版本五
#### 1.4.6 ggplot函数绘制点图主图
ggplot(mtcars,aes(mpg,disp,col = factor(mtcars$cyl))) +
  geom_point(aes(shape = factor(mtcars$cyl)),size = 5)+
  theme_bw() + # 设置背景为空白
  theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) + # 去掉默认背景网格
  theme(plot.margin = unit(rep(2,4), 'lines'), aspect.ratio = 1) + theme(legend.title = element_text(face = "bold", size = 10)) +
  theme(axis.title.x = element_text(size=14), axis.title.y=element_text(size=14)) + # x轴和y轴标题字体大小
  xlab("Miles/(US) gallon(mpg)") + # x轴标题
  ylab("Displacement (cu.in.)(disp)") + # y轴标题
  annotate("text", x = c(15, 20, 30), y = c(400, 200, 120), label=c("cyl = 4", "cyl = 6", "cyl = 8")) + # 添加注释信息
  theme(legend.position = "none") + # 去掉默认图例
  labs(title="Mtcars Data of Point Plot") + # 添加图题目
  theme(plot.title = element_text(hjust = 0.5)) + # 调整图题目位置到图上中
  stat_ellipse() # 添加统计椭圆
#### 1.4.7 保存图片为pdf文件
ggsave(filename = "Mtcars Data of Point Plot.pdf", width = 6.5, height = 6.5)
#### 1.4.8 保存图片为png文件
ggsave(filename = "Mtcars Data of Point Plot.png", width = 6.5, height = 6.5, units = "in")

### 1.5 保存数据
write.table(mtcars, file = "point_data.txt", sep = "\t")

# 跳出点图的工作目录，到目录：鹿明生物_R基础绘图培训班课程_项目_20191025
setwd("../")

############################################
## 2.线图 ##
############################################
# 设置工作目录到条形图目录：2.lineplot
setwd("2.lineplot")

### 2.1 导入R内置数据：pressure
data("pressure")

### 2.2 数据查看
class(pressure)
# [1] "data.frame"
dim(pressure)
# [1] 19  2

### 2.3 plot()绘制线图
#### 2.3.1 版本一线图
plot(pressure$temperature, pressure$pressure, type = "l", xlab = "温度 (摄氏)", ylab = "压力 (汞/毫米)", main = "温度和压力关系的线图", col.axis = "blue", col.lab = "green", col.main = "purple", col = "red")

#### 2.3.2 版本二线图+点图，并添加注释信息
plot(pressure$temperature, pressure$pressure, type = "p", xlab = "温度 (摄氏)", ylab = "压力 (汞/毫米)", main = "温度和压力关系的线图", pch = 19, cex =2, col.axis = "blue", col.lab = "green", col.main = "purple")
lines(pressure$temperature, pressure$pressure, type = "l", col = "red", lwd = 2)

### 2.4 ggplot()绘制线图
library(ggplot2) # 导入R包
#### 2.4.1 ggplot函数绘制线图主图
ggplot(mtcars,aes(mpg,disp,col = factor(mtcars$cyl))) +
  geom_line(aes(mpg, disp)) + # size可以调整线的粗细
  #### 2.4.2 图主题theme修饰
  theme_bw() + # 设置背景为空白
  theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +  # 去掉默认背景网格
  theme(plot.margin = unit(rep(2,4), 'lines'), aspect.ratio = 1) + theme(legend.title = element_text(face = "bold", size = 10)) +
  theme(axis.title.x = element_text(size=14), axis.title.y=element_text(size=14)) + # x轴和y轴标题字体大小
  xlab("Miles/(US) gallon(mpg)") + # x轴标题
  ylab("Displacement (cu.in.)(disp)") + # y轴标题
  annotate("text", x = c(15, 20, 30), y = c(400, 200, 120), label=c("cyl = 4", "cyl = 6", "cyl = 8")) + # 添加注释信息
  theme(legend.position = "none") + # 去掉默认图例
  labs(title="Mtcars Data of Line Plot") + # 添加图题目
  theme(plot.title = element_text(hjust = 0.5)) # 调整图题目位置到图上中
ggsave(filename = "Mtcars Data of Line Plot.pdf", width = 6.5, height = 6.5)
ggsave(filename = "Mtcars Data of Line Plot.png", width = 6.5, height = 6.5, units = "in")

#### 2.4.3 修改线的宽度绘制并保存图片
ggplot(mtcars,aes(mpg,disp,col = factor(mtcars$cyl))) +
  geom_line(aes(mpg, disp,size = 2)) + # size可以调整线的粗细
  #### 2.4.4 图主题theme修饰
  theme_bw() + # 设置背景为空白
  theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +  # 去掉默认背景网格
  theme(plot.margin = unit(rep(2,4), 'lines'), aspect.ratio = 1) + theme(legend.title = element_text(face = "bold", size = 10)) +
  theme(axis.title.x = element_text(size=14), axis.title.y=element_text(size=14)) + # x轴和y轴标题字体大小
  xlab("Miles/(US) gallon(mpg)") + # x轴标题
  ylab("Displacement (cu.in.)(disp)") + # y轴标题
  annotate("text", x = c(15, 20, 30), y = c(400, 200, 120), label=c("cyl = 4", "cyl = 6", "cyl = 8")) + # 添加注释信息
  theme(legend.position = "none") + # 去掉默认图例
  labs(title="Mtcars Data of Line Plot") + # 添加图题目
  theme(plot.title = element_text(hjust = 0.5)) # 调整图题目位置到图上中
ggsave(filename = "Mtcars Data of Line Plot_size=2.pdf", width = 6.5, height = 6.5)
ggsave(filename = "Mtcars Data of Line Plot_size=2.png", width = 6.5, height = 6.5, units = "in")

### 2.5 保存数据
openxlsx::write.xlsx(pressure, file = "Data_frame_pressure.xlsx")

# 跳出条形图工作目录
setwd("../")

############################################
## 3.条形图 ##
############################################
# 设置工作目录到条形图目录：3.barplot
setwd("3.barplot")

### 3.1 构建数据
bar_data <- data.frame(V1 = c("phos_pro", "phos_pep", "phos_site"), V2 = c(1001, 2372, 2753))
bar_data
#          V1   V2
# 1  phos_pro 1001
# 2  phos_pep 2372
# 3 phos_site 2753
class(bar_data)
# [1] "data.frame"

### 3.2 数据处理
N <- bar_data$V2
N
# [1] 1001 2372 2753
ymax <- max(N)
ymax
# [1] 2753

### 3.3 绘制条形图
#### 3.3.1 设置画布大小
op <- par(no.readonly=TRUE) # 保存默认画布环境变量
par(mai=c(2,1.8,1,1.8)) # 自定义环境变量
#### 3.3.2 绘制主图
bp <- barplot(N, width = 3, col = c("lightseagreen", "lawngreen", "orangered"), names.arg = c("Proteins", "Peptides", "Sites"), legend = c("PhosphoProteins", "PhosphoPeptides", "PhosphoSites"), xlab = NULL, ylab = c("Number"), ylim = c(0, ymax + 500), axes = T, xpd = F, axisnames = TRUE, horiz = F, space= 1.5, beside = TRUE, cex.names = 1.8, cex.axis = 1.1, cex.lab = 1.8, args.legend = list(x = "top"))
#### 3.3.3 填加注释信息
N2 <- N + 100
text(bp, N2, format(N), xpd = TRUE, col = "blue")

### 3.4 保存图片
#### 3.4.1 保存为pdf格式
pdf("proteins-peptides-sites-statistical_barplot.pdf", width = 8.5, height = 8.5)
barplot(N, width = 3, col = c("lightseagreen", "lawngreen", "orangered"), names.arg = c("Proteins", "Peptides", "Sites"), legend = c("PhosphoProteins", "PhosphoPeptides", "PhosphoSites"), xlab = NULL, ylab = c("Number"), ylim = c(0, ymax + 500), axes = T, xpd = F, axisnames = TRUE, horiz = F, space= 1.5, beside = TRUE, cex.names = 1.8, cex.axis = 1.1, cex.lab = 1.8, args.legend = list(x = "top"))
N2 <- N + 100
text(bp, N2, format(N), xpd = TRUE, col = "blue")
dev.off()

#### 3.4.2 保存为png格式
png("proteins-peptides-sites-statistical_barplot.png", width = 850, height = 850)
barplot(N, width = 3, col = c("lightseagreen", "lawngreen", "orangered"), names.arg = c("Proteins", "Peptides", "Sites"), legend = c("PhosphoProteins", "PhosphoPeptides", "PhosphoSites"), xlab = NULL, ylab = c("Number"), ylim = c(0, ymax + 500), axes = T, xpd = F, axisnames = TRUE, horiz = F, space= 1.5, beside = TRUE, cex.names = 1.8, cex.axis = 1.1, cex.lab = 1.8, args.legend = list(x = "top"))
N2 <- N + 100
text(bp, N2, format(N), xpd = TRUE, col = "blue")
dev.off()
par(op) # 恢复默认画布环境变量

### 3.5 保存数据
write.table(bar_data, file = "bar_data.txt", sep = "\t")

# 跳出条形图工作目录
setwd("../")

############################################
## 4.直方图 ##
############################################
# 设置工作目录到直方图目录：4.histogram
setwd("4.histogram")

### 4.1 安装R包
# install.packages("ggplot2")

### 4.2 导入R包：ggplot2
library(ggplot2)

### 4.3 读取数据
mw_data <- read.table("./mw.txt", sep = "\t", header = TRUE)
dim(mw_data)
# [1] 1001    2
class(mw_data)
# [1] "data.frame"
colnames(mw_data)
# [1] "Accession"         "Mol..weight..kDa."

### 4.4 绘图
ggplot(mw_data, aes(mw_data$Mol..weight..kDa.)) +
  geom_histogram(binwidth = 5, fill = "brown1") +
  theme_bw() +
  theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +
  theme(plot.margin = unit(rep(2,4),'lines'), aspect.ratio = .6) +
  theme(legend.text = element_text(size = 15, colour = "black")) +
  theme(legend.title = element_text(face = "bold", size = 20)) +
  theme(axis.title.x = element_text(size=16), axis.title.y=element_text(size=16)) +
  xlab("Molecular weight(kDa)") +
  ylab("Number of identified proteins")

### 4.5 保存图片
ggsave("Molecular_weight_distribution_of_histogram.pdf", width = 12, height = 7.5, units = "in")
ggsave("Molecular_weight_distribution_of_histogram.png", width = 12, height = 7.5, units = "in")

# 跳出直方图工作目录
setwd("../")

############################################
## 5.饼图 ##
############################################
# 设置工作目录到饼图目录：5.pie
setwd("5.pie")

### 5.1 安装R包
# install.packages("openxlsx")
# install.packages("plotrix")

### 5.2 导入R包
library(openxlsx)
library(plotrix)

### 5.2 读取数据
pie_data <- read.xlsx("pie_data.xlsx", sheet = 1, startRow = 1, colNames = T, rowNames = F, detectDates = F)
class(pie_data)
# [1] "data.frame"
dim(pie_data)
# [1] 3881    2

### 5.3 数据处理
rownames(pie_data) <- pie_data$Accession
data_new <- data.frame(rownames(pie_data), pie_data$`Coverage.[%]`)
colnames(data_new) <- c("Accession", "Coverage")

A <- NROW(data_new[data_new$Coverage <= 10,])
B <- NROW(data_new[data_new$Coverage > 10 & data_new$Coverage <= 20,])
C <- NROW(data_new[data_new$Coverage > 20 & data_new$Coverage <= 30,])
D <- NROW(data_new[data_new$Coverage > 30 & data_new$Coverage <= 40,])
E <- NROW(data_new[data_new$Coverage > 40,])
x <- c(A, B, C, D, E)
labels <- c("0-10%", "10-20%", "20-30%", "30-40%", ">40%")

### 5.4 绘制2D饼图并保存为pdf格式的图片
pdf("pie_2d.pdf", width = 12, height = 7.5)
pie(x, labels = labels, col = rainbow(length(x)), main = "The rate of peptide coverage(%)")
dev.off()

### 5.5 绘制3D饼图并保存为pdf格式的图片
pdf("pie_3d.pdf", width = 12, height = 7.5)
pie3D(x, labels = labels, explode = 0.1, main = "The rate of peptide coverage(%)")
dev.off()

# 跳出饼图工作目录
setwd("../")

############################################
## 6.箱线图 ##
############################################
# 设置当前工作目录到箱线图目录：6.boxplot
setwd("6.boxplot")

### 6.1 查看R内置数据：ToothGrowth
data(ToothGrowth)
class(ToothGrowth)
# [1] "data.frame"
dim(ToothGrowth)
# [1] 60  3
head(ToothGrowth)
#    len supp dose
# 1  4.2   VC  0.5
# 2 11.5   VC  0.5
# 3  7.3   VC  0.5
# 4  5.8   VC  0.5
# 5  6.4   VC  0.5
# 6 10.0   VC  0.5

### 6.2 绘制箱线图并保存为pdf格式的图片
#### 6.2.1 箱线图版本一
pdf("boxplot_ToothGrowth_v1.pdf", width = 8.5, height = 8.5)
boxplot(len ~ dose, data = ToothGrowth, boxwex = 0.25, at = 1:3 - 0.2, subset = supp == "VC", col = "yellow", main = "Guinea Pigs' Tooth Growth", xlab = "Vitamin C dose mg", ylab = "tooth length", xlim = c(0.5, 3.5), ylim = c(0, 35), yaxs = "i")
boxplot(len ~ dose, data = ToothGrowth, add = TRUE, boxwex = 0.25, at = 1:3 + 0.2, subset = supp == "OJ", col = "orange")
legend(2, 9, c("Ascorbic acid", "Orange juice"), fill = c("yellow", "orange"))
dev.off()

#### 6.2.2 箱线图版本二并保存为pdf格式的图片
#### 6.2.3 绘制箱线图主图
pdf("boxplot_ToothGrowth_v2.pdf", width = 8.5, height = 8.5)
bp <- boxplot(len~dose, data = ToothGrowth,
              xlab = "dose-numeric Dose in milligrams/day", # x轴标题
              ylab = "len-numeric Tooth length", # y轴标题
              ann = TRUE, # 注释为真，则显示x,y轴的标题；为假则不显示
              notch = TRUE, # 细腰形箱线图
              outline = TRUE, # 极值线
              names = c("Dose=0.5", "Dose=1", "Dose=2"), # 每个箱线图的x轴标签
              boxwex = 0.5, # 设置箱子的宽度
              staplewex = 0.5, # 设置staple lined的宽度
              outwex = 1, # 离群线宽度展开，与箱体宽度成正比
              plot = TRUE, # 为真，则绘图；为假则生成绘图用的数据
              border = "black", # border参数控制箱子轮廓的颜色
              col = c("blue", "green", "orange"), # col参数对箱子内部进行颜色填充
              horizontal = FALSE ) # horizontal参数为真，则水平绘制箱线图；为假则垂直绘制箱线图，默认为假垂直绘制箱线图

#### 6.2.4 为图填加标题
title(main = "Boxplot of Data ToothGrowth len~dose")

#### 6.2.5 为箱线图填加数据标签
bp_stats <- bp$stats
y = c(bp_stats[,1],bp_stats[,2],bp_stats[,3])
text(x = c(rep(1,5),rep(2,5), rep(3,5)), y = c(bp_stats[,1],bp_stats[,2],bp_stats[,3]), labels = y, col = "red")
legend(0.5, 35, legend = c("Dose=0.5", "Dose=1", "Dose=2"), pch = 5, title= "Dose-numeric", col = c("blue", "green", "orange"), bg = "lightgrey")
dev.off()

### 6.3 保存数据
write.csv(ToothGrowth, file = "ToothGrowth_boxplot_data.csv")

# 跳出箱线图工作目录
setwd("../")

############################################
## 7.小提琴图 ##
############################################
# 设置当前的工作目录到小提琴目录：7.violin_diagram
setwd("7.violin_diagram")

### 7.1 安装小提琴包
# install.packages("vioplot")

### 7.2 导入R包
library(vioplot)

### 7.3 查看R内置数据
data("iris")
class(iris)
# [1] "data.frame"
dim(iris)
# [1] 150   5
head(iris)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa
str(iris)
# 'data.frame':	150 obs. of  5 variables:
# $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
# $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
# $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
# $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
# $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

### 7.4 绘制小提琴图及保存图片
#### 7.4.1 绘制主图
pdf("violin_diagram_iris.pdf", width = 8.5, height = 8.5)
vioplot(Sepal.Length~Species, data = iris, main = "Sepal Length", col=c("lightgreen", "lightblue", "palevioletred"))
#### 7.4.2 绘制图例
legend("topleft", legend=c("setosa", "versicolor", "virginica"),fill=c("lightgreen", "lightblue", "palevioletred"), cex = 1)
dev.off()

### 7.5 保存数据
write.table(iris, file = "violin_diagram_data.txt", sep = "\t")

# 跳出当前工作目录
setwd("../")

############################################
## 8.韦恩图 ##
############################################
# 设置当前工作目录到韦恩图目录：8.vennplot
setwd("8.vennplot")

### 8.1 安装VennDiagram包
# install.packages("VennDiagram")

### 8.2 导入R包
library("VennDiagram")

### 8.3 读取数据
venn_data <- read.table("venn_data.csv", header = T, sep = ',', stringsAsFactors = F, check.names = F)
class(venn_data)
# [1] "data.frame"
dim(venn_data)
# [1] 399   3
head(venn_data)
#           G1     G2         G3
# 1     P02770 P14046 A0A0G2JSH5
# 2 A0A0G2JSH5 F1LMU0     M0RBF1
# 3     M0RBF1 Q6MG90     P14046
# 4     F1MAA7 F7EZQ4     D4AA52
# 5     P14046 P58775     G3V8B0
# 6     D4AA52 G3V6D8     D4A678

### 8.4 绘制韦恩图
venn_list <- list(venn_data[,1], venn_data[,2], venn_data[,3])
names(venn_list) <- colnames(venn_data)
venn.diagram(venn_list, filename = 'venn_three_sets_plot.png', imagetype = 'png', margin = 0.1, fill = c('red', 'blue', 'green'), alpha = 0.50, col = 'black', cex = 1, fontfamily = 'serif', label.col = c("darkred", "white", "darkblue", "white", "white", "white", "darkgreen"), cat.cex = 1, cat.fontfamily = 'serif', cat.default.pos = "text", cat.pos = 0)

# 跳出当前工作目录
setwd("../")

############################################
## 9.热图 ##
############################################
# 设置当前工作目录到热图目录：9.heatmap
setwd("9.heatmap")

### 9.1 安装pheatmap包
# install.packages("pheatmap")

### 9.2 导入pheatmap包
library(pheatmap)

### 9.3 读取数据
heatmap_data <- read.table("A_B_heatmap_data.csv",sep = ",", header = TRUE, quote = "",stringsAsFactors = FALSE, row.names = 1)

class(heatmap_data)
# [1] "data.frame"

dim(heatmap_data)
# [1] 50  6

### 9.4 绘制热图及保存图片pdf
pdf("AvsB_heatmap.pdf", width = 8.5, height = 12)
pheatmap(heatmap_data,
         cluster_rows = TRUE,
         display_numbers = FALSE,
         number_format = "%.3f",
         show_colnames = TRUE,
         show_rownames = TRUE,
         color=colorRampPalette(c("green","black","red"),bias=1)(100),
         border_color = NA,
         cellwidth = 50,
         cellheight = 8,
         fontsize_col = 20,
         fontsize_row = 5,
         scale="column")
#
dev.off()

# 跳出当前工作目录
setwd("../")


############################################
## 10.相关性图 ##
############################################
# 设置当前工作目录到相关性图目录：10.corrplot
setwd("10.corrplot")

### 10.1 安装R包
# install.packages("corrplot")
# install.packages("openxlsx")

### 10.2 导入R包
analysis_needs_packages <- c("openxlsx", "corrplot")
sapply(analysis_needs_packages, library, character.only = T)

### 10.3 读取数据
corrplot_data <- read.xlsx("corrplot_data.xlsx", sheet = 1, startRow = 1, colNames = TRUE, rowNames = FALSE, detectDates = FALSE)
dim(corrplot_data) # 查看数据集的大小：行数和列数
# [1] 50  7
class(corrplot_data) # 查看数据集类型
# [1] "data.frame"
rownames(corrplot_data) <- corrplot_data[,1] # 设置行名
corrplot_data$Accession <- NULL # 删除Accession都是字符串的这一列
data_t <- t(corrplot_data)
data_t_corr <- cor(data_t)

col <- colorRampPalette(c("blue","white", "red"))(1000) #  设置调色板

### 10.4 绘制相关性图及保存图片pdf和png格式
pdf("TRvsCON-correlation_coefficients_plot.pdf", width = 10, height = 10)
M <- corrplot(data_t_corr, method = "circle", type = "upper", tl.col = "black", tl.cex = 0.8, col = col, order = "hclust", diag = F)
dev.off()
png("TRvsCON-correlation_coefficients_plot.png", width = 1000, height = 1000)
corrplot(data_t_corr, method = "circle", type = "upper", tl.col = "black", tl.cex = 0.7, col = col, order = "hclust", diag = F)
dev.off()

# 保存相关性矩阵数据
write.csv(M, file = "TRvsCON-correlation_coefficients_matrix_data.csv")

# 跳出当前工作目录
setwd("../")

############################################
## 11.气泡图 ##
############################################
# 设置当前工作目录到气泡图目录：11.bubble_plot
setwd("11.bubble_plot")

### 11.1 导入R包
library(ggplot2)
library(openxlsx)

### 11.2 读取数据
kegg_data <- openxlsx::read.xlsx("kegg气泡图数据.xlsx", check.names = FALSE)

### 11.3 自定义气泡图函数
auto_bubble0 <- function(data = data){
  pp <- ggplot2::ggplot(data, aes(RichFactor, PathwayTerm))
  pbubble <- pp + ggplot2::geom_point(aes(size = Count, color = Pvalue)) +
    ggplot2::theme(axis.text = element_text(size = 10), axis.title = element_text(size = 10), legend.text = element_text(size = 10), legend.title = element_text(size= 10))
  pbubble + ggplot2::scale_colour_gradient(low = "green",high = "red") + guides(size = guide_legend(order = 1))
  ggsave("kegg气泡图.pdf", width = 8.5, height =8.5)# 保存图片为pdf格式
  ggsave("kegg气泡图.png", width = 8.5, height =8.5, units = "in")
}

### 11.4 绘制kegg通路气泡图
auto_bubble0(data = kegg_data)

# 跳出当前工作目录
setwd("../")

############################################
## 12.火山图 ##
############################################
# 设置当前工作目录到火山图目录：12.volcano_plot
setwd("12.volcano_plot")

### 12.1 导入R包
library(ggplot2)
library(openxlsx)

### 12.2 读取数据
volcano_data <- read.xlsx("volcano_data.xlsx", sheet = "case_control", startRow = 1, colNames = TRUE, rowNames = FALSE, detectDates = FALSE)
dim(volcano_data)
# [1] 5525    9
class(volcano_data)
# [1] "data.frame"
head(volcano_data)

### 12.3 数据处理
rownames(volcano_data) <- volcano_data[,1]
afp_col <- c("Accession", "P-value",	"FC")
afp_index <- match(afp_col, colnames(volcano_data))
new_data <- volcano_data[,afp_index]
colnames(new_data) <- c("Accession", "P_value", "FC")
dim(new_data)
# [1] 5525    3

fc = 1.2 # 设置差异倍数Foldchanger(FC)
### 12.4 设置注释信息
new_data$threshold[new_data$P_value <= 0.05 & new_data$FC > fc] = "Up"
new_data$threshold[new_data$P_value <= 0.05 & new_data$FC < 1/fc] = "Down"
new_data$threshold[new_data$P_value > 0.05 & (new_data$FC >= 1/fc | new_data$FC <= fc)] = "Non"
new_data$threshold[new_data$P_value < 0.05 & (new_data$FC >= 1/fc & new_data$FC <= fc)] = "Non"

### 12.5 绘制火山图及保存图片
ggplot(new_data, aes(x = log2(FC), y = -log10(P_value), colour = threshold)) +
  xlab("log2(Fold Change)") +
  ylab("-log10(P_value)") +
  geom_point() +
  theme_bw() +
  theme(panel.border = element_blank(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line = element_line(colour = "black")) +
  theme(plot.margin = unit(rep(2,4), 'lines'), aspect.ratio = 1) + theme(legend.title = element_text(face = "bold", size = 12)) +
  theme(axis.title.x = element_text(size=14), axis.title.y=element_text(size=14)) +
  geom_hline(aes(yintercept = -log10(0.05)), colour = "blue", size = 0.5, linetype = 2) +
  geom_vline(aes(xintercept = log2(fc)), colour = "blue", size = 0.5, linetype = 2) +
  geom_vline(aes(xintercept = log2(1/fc)), colour = "blue", size = 0.5, linetype = 2) +
  annotate("text",x=0.7, y=-log10(0.03), label="P_value=0.05") +
  annotate("text",x=log2(1/fc), y=6.2, label=paste0("FC≈",round(1/fc, 3))) +
  annotate("text",x=log2(fc), y=6.2, label=paste0("FC=",fc))
ggsave(paste0("case_control_fc=",fc,"_volcano_plot.pdf"), width = 12, height = 7.5, units = "in")
ggsave(paste0("case_control_fc=",fc,"_volcano_plot.png"), width = 12, height = 7.5, units = "in")

### 12.6 保存数据
write.xlsx(new_data, file = paste0("case_control_fc=",fc,"_volcano_data.xlsx"))
# 跳出当前工作目录
setwd("../")

## 三、结束

### 3.1 查看当前目录的子目录
dir()
# [1] "1.point_or_scatter_diagram"
# [2] "10.bubble_plot"
# [3] "11.volcano_plot"
# [4] "2.barplot"
# [5] "3.histogram"
# [6] "4.pie"
# [7] "5.boxplot"
# [8] "6.violin_diagram"
# [9] "7.vennplot"
# [10] "8.heatmap"
# [11] "9.corrplot"
# [12] "鹿明生物_R基础绘图培训班课程_绘图实战脚本.R"
# [13] "鹿明生物_R基础绘图培训班课程_项目_20191025.Rproj"

### 3.2 输出分析用到的R包和R环境信息
sessionInfo()
# R version 3.6.1 (2019-07-05)
# Platform: x86_64-w64-mingw32/x64 (64-bit)
# Running under: Windows 10 x64 (build 18362)
#
# Matrix products: default
#
# locale:
#   [1] LC_COLLATE=Chinese (Simplified)_China.936
# [2] LC_CTYPE=Chinese (Simplified)_China.936
# [3] LC_MONETARY=Chinese (Simplified)_China.936
# [4] LC_NUMERIC=C
# [5] LC_TIME=Chinese (Simplified)_China.936
#
# attached base packages:
#   [1] grid      stats     graphics  grDevices utils     datasets  methods
# [8] base
#
# other attached packages:
#   [1] corrplot_0.84       pheatmap_1.0.12     VennDiagram_1.6.20
# [4] futile.logger_1.4.3 vioplot_0.3.2       zoo_1.8-6
# [7] sm_2.2-5.6          plotrix_3.7-6       openxlsx_4.1.0.1
# [10] ggplot2_3.2.1
#
# loaded via a namespace (and not attached):
#   [1] zip_2.0.4            Rcpp_1.0.2           RColorBrewer_1.1-2
# [4] formatR_1.7          pillar_1.4.2         compiler_3.6.1
# [7] futile.options_1.0.1 tools_3.6.1          digest_0.6.21
# [10] packrat_0.5.0        tibble_2.1.3         gtable_0.3.0
# [13] lattice_0.20-38      pkgconfig_2.0.3      rlang_0.4.0
# [16] rstudioapi_0.10      yaml_2.2.0           withr_2.1.2
# [19] dplyr_0.8.3          tidyselect_0.2.5     glue_1.3.1
# [22] R6_2.4.0             tcltk_3.6.1          purrr_0.3.2
# [25] lambda.r_1.2.4       magrittr_1.5         scales_1.0.0
# [28] assertthat_0.2.1     colorspace_1.4-1     labeling_0.3
# [31] lazyeval_0.2.2       munsell_0.5.0        crayon_1.3.4

## 脚本耗时
print("脚本运行时间为：")
proc.time()-pt
