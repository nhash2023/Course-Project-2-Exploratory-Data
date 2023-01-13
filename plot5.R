baltimoreMotor <- subset(NEI, NEI$fips == "24510" & NEI$type == "ON-ROAD")
baltimoreMotorAGG <- aggregate(Emissions ~ year, baltimoreMotor, sum)

png(filename="plot5.png", width=480, height = 480 )

ggplot2::ggplot(baltimoreMotorAGG, ggplot2::aes(year, Emissions)) +
  ggplot2::geom_line(col = "steelblue3") +
  ggplot2::geom_point(col = "steelblue3") +
  ggplot2::ggtitle(expression("Baltimore " ~ PM[2.5] ~ "Motor Vehicle Emissions by Year")) +
  ggplot2::xlab("Year") +
  ggplot2::ylab(expression(~PM[2.5]~ "Motor Vehicle Emissions"))

