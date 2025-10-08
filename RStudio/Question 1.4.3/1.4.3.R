# Table 1.9 Renewable Energy Consumption

# data frame
energy_data <- data.frame(
  Source = c("Coal", "Natural Gas", "NEP", "Petroleum", "RE"),
  Percentage = c(22, 23, 8, 40, 7)
)

# Basic bar graph
barplot(
  energy_data$Percentage,
  names.arg = energy_data$Source,
  col = "skyblue",
  main = "U.S. Energy Consumption by Source (2007)",
  xlab = "Energy Source",
  ylab = "Percentage",
  ylim = c(0, 50)
)

# For Pareto chart, we can use the 'qcc' package
# Install package if not already installed
install.packages("qcc")

# Load package
library(qcc)

# Pareto chart
qcc::pareto.chart(
  energy_data$Percentage,
  names = energy_data$Source,
  main = "Pareto Chart - U.S. Energy Consumption (2007)",
  ylab = "Percentage"
)

# Pie chart
pie(
  energy_data$Percentage,
  labels = paste(energy_data$Source, energy_data$Percentage, "%"),
  main = "Pie Chart - U.S. Energy Consumption by Source (2007)",
  col = rainbow(length(energy_data$Source))
)
