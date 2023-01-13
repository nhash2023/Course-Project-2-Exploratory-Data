baltimore <- subset(NEI, NEI$fips == "24510")
baltimoreType <- aggregate(Emissions ~ year + type, baltimore, sum)

png(filename="plot3.png", width=480, height = 480 )

ggplot2::ggplot(baltimoreType, ggplot2::aes(year, Emissions, col = type)) +
  ggplot2::geom_line() +
  ggplot2::geom_point() +
  ggplot2::ggtitle(expression("Total Baltimore " ~ PM[2.5] ~ "Emissions by Type and Year")) +
  ggplot2::ylab(expression("Total Baltimore " ~ PM[2.5] ~ "Emissions")) +
  ggplot2::xlab("Year") +
  ggplot2::scale_colour_discrete(name = "Type of sources") +
  ggplot2::theme(legend.title = ggplot2::element_text(face = "bold"))

