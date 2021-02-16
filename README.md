# SI_Provenance_Wnt_Family
Supporting information for publication by Budde et al. (2021)

![WebProv screenshot with all studies](https://github.com/adam-p/markdown-here/raw/master/src/common/WebProvExport/screenshots/AllStudies.png "Provenance graph in WebProv of all studies")


## Replicate the figures
* **Fig 1:** Own drawing using LibreOffice Draw.
* **Fig 2:** Adapted from `ProvenanceInformation/Provenance_2003_Lee.pdf`.
* **Fig 3:** Own drawing using [Draw.io](https://app.diagrams.net/).
* **Fig 4:** Screenshot (printed as pdf and converted to eps) from WebProv. See `WebProvExport/screenshots/2003Lee_complete.png`for a similar screenshot.
* **Fig 5:** Run `AnalysisResults/PlotExperimentCategories.R`.
* **Fig 6:** Run `NetworkVisualization/saveGVasPDF.R`.
* **S1 Figure:** Run `NetworkVisualization/saveGVasPDF.R`.

## Diretories and files

We will briefly describe the content of the directories:

**AnalysisResults/**
This directory contains csv files with the results of the categorization of the assumptions and experiments found within the 19 Wnt simulation studies as well as information about the (wet-lab) data used by the 19 Wnt simulation studies. The R file contains a script for replicating Fig 5.

**NetworkVisualization/**
Graphs described in the Graphviz DOT language and rendered using the R package [DiagrammeR](https://rich-iannone.github.io/DiagrammeR/graphviz_and_mermaid.html#mermaid). We have used this approach to utilize the possibilities of the Graphviz layouts (neato and circo). The R file contains a script for replicating Fig 6 and S1 Figure.

**ProvenanceInformation/**
The pdfs contain own drawings of the provenance graphs as well as the provenance information of each study analyzed by us. This information was then transferred to WebProv.

**WebProvExport/**
The captured provenance information of every single study has been exported. We have also exported the data of additinal studies used by some of the 19 Wnt simulation studies. The complete provenance information is contained in the file `WebProvAllStudies.json` and may be uploaded to WebProv.
The subdirectory `screenshots/` contains screenshots of the provenance graphs of the 19 Wnt simulation studies in WebProv. Displaying the entire provenance information of all studies resulted in the image `AllStudies.png`.