# Script to plot results of experiment categorization ++++++++++++++++++++++
# Author: Kai Budde
# Created: 2021/02/11
# Last changed: 2021/02/14


library(ggplot2)

df_experimentCategorizationResults <- read.csv("ExperimentsCategorizationResults.csv")

df_experimentCategorizationResults$Category <-
  factor(df_experimentCategorizationResults$Category,
         levels = c("Optimization", "Sensitivity analysis", "Perturbation",
                    "Parameter scan", "Steady-state analysis",
                    "Time course analysis", "Other"))

plot <- ggplot(df_experimentCategorizationResults, aes(Category)) +
  geom_bar(fill="lightgrey") +
  scale_y_continuous(expand = c(0,0), limits = c(0, 55)) +
  xlab("Categories of Simulation Experiments") +
  ylab("Count") +
  geom_text(stat='count', aes(label=..count..), vjust=-1, size = 2) +
  theme_bw() +
  theme(text = element_text(size = 9), panel.grid.major.x = element_blank())

ggsave("SimulationExperimentCategories.eps", width = 5.2, height = 2.9, units = "in")
ggsave("SimulationExperimentCategories.pdf", width = 5.2, height = 2.9, units = "in")
