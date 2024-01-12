library(rgdal)

# Read the shapefile
shape_data <- readOGR('F:/Spy images/SubsetP1.shp', verbose = FALSE)
shape_data1 <- readOGR('F:/Spy images/td_Dec2.shp', verbose = FALSE)
shape_data2 <- readOGR('G:/shapfiles_Xiang/plots_Xiang1.shp', verbose = FALSE)
shape_data3 <- readOGR('F:/Spy images/Plots_left_XY.shp', verbose = FALSE)
# Print the read data
task1 <- data.frame(data.frame(names(table(shape_data$id_2))),"Praseeda")
names(task1) <- c("ID_Plot", "Person responsible")
task2 <- data.frame(data.frame(names(table(shape_data1$id_2))),"Christoph")
names(task2) <- c("ID_Plot", "Person responsible")
task3 <- data.frame(data.frame(names(table(shape_data2$id_2))),"Xiang")
names(task3) <- c("ID_Plot", "Person responsible")
task4 <- data.frame(data.frame(names(table(shape_data3$id_2))),"Xiang")
names(task4) <- c("ID_Plot", "Person responsible")

finalplot <- rbind(task1,task2,task3,task4)
write.csv(finalplot, "dataset/Info_plots.csv")
