SCCcoal <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
NEIcoal <- NEI[NEI$SCC %in% SCCcoal$SCC,]
totalCoal <- aggregate(Emissions ~ year + type, NEIcoal, sum)

png(filename="plot4.png", width=480, height = 480 )

ggplot2::ggplot(totalCoal, ggplot2::aes(year, Emissions, col = type)) +
  ggplot2::geom_line() +
  ggplot2::geom_point() +
  ggplot2::ggtitle(expression("Total US" ~ PM[2.5] ~ "Coal Emission by Type and Year")) +
  ggplot2::xlab("Year") +
  ggplot2::ylab(expression("US " ~ PM[2.5] ~ "Coal Emission")) +
  ggplot2::scale_colour_discrete(name = "Type of sources") +
  ggplot2::theme(legend.title = ggplot2::element_text(face = "bold"))

