baltLosAngelesMotors <- subset(NEI, NEI$fips %in% c("24510","06037") & NEI$type == "ON-ROAD")
baltLosAngelesMotorsAGG <- aggregate(Emissions ~ year + fips, baltLosAngelesMotors, sum)

png(filename="plot6.png", width=480, height = 480 )

ggplot2::ggplot(baltLosAngelesMotorsAGG, ggplot2::aes(year, Emissions, col = fips)) +
  ggplot2::geom_line() +
  ggplot2::geom_point() +
  ggplot2::ggtitle(expression("Baltimore and Los Angeles" ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  ggplot2::labs(x = "Year", y = expression(~PM[2.5]~ "Motor Vehicle Emissions") ) +
  ggplot2::scale_colour_discrete(name = "City", labels = c("Los Angeles", "Baltimore")) +
  ggplot2::theme(legend.title = ggplot2::element_text(face = "bold"))

