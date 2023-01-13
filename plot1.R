totalNEI <- aggregate(Emissions ~ year, NEI, sum)

png(filename="plot1.png", width=480, height = 480 )

plot(totalNEI$year, totalNEI$Emissions, type = "o", col = "steelblue3", 
     main = expression("Total US "~ PM[2.5]~ "Emissions by Year"), 
     ylab = expression("Total US "~   PM[2.5] ~ "Emissions"), 
     xlab = "Year")
