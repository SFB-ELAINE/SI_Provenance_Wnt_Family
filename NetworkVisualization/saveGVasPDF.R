# Script to save *.gv as pdf +++++++++++++++++++++++++++++++++++++++++++++++
# Author: Kai Budde
# Created: 2021/02/05
# Last changed: 2021/02/15


library(tidyverse)      # for %>% pipes
library(DiagrammeR)
library(DiagrammeRsvg)  # for conversion to svg
library(rsvg)           # for saving svg


# Reproduce Fig 6:
# Provenance graph on study level including colors for cell lines used
# using the 'neato' layout
grViz_object <- grViz(diagram = 'WntProvCellLines.gv')

grViz_object %>%
  export_svg() %>%
  charToRaw %>%
  rsvg_pdf("./WntProvCellLines.pdf")

# Reproduce S1 Figure:
# Provenance graph on study level including colors for additional pathways
# used using the 'circo' layout
grViz_object <- grViz(diagram = 'WntProvCircoPathways.gv')

grViz_object %>%
  export_svg() %>%
  charToRaw %>% 
  rsvg_pdf("./WntProvCircoPathways.pdf")