# rawDiag <img src="https://user-images.githubusercontent.com/12233339/39515832-84b561ea-4dfb-11e8-9411-276bc6fb71d6.png" align="right" width="100px" />

an R package supporting rational LC-MS method optimization for bottom-up proteomics

"Its raw, fast and colorful!" [(WEW)](https://github.com/wolski)

## 1. System Requirements  
for Windows/Linux/MacOSX platforms

### 1.1 The R System
- R (>3.4.0)
- install https://CRAN.R-project.org/package=devtools

### 1.2 The New Raw File Reader for Thermo Fisher Scientific Instruments

Due to license reason, we currently not allowed to distribute Thermo Fisher Scientific software with the *rawDiag* package (we hope that this will change soon).
The *New RawFileReader from Thermo Fisher Scientific* (see http://planetorbitrap.com/rawfilereader)
has to be separately downloaded and installed in order to be able to use the R function `read.raw`.

on Linux 
(Debian) system run the following code snippet once you have downloaded the libraries (expect ThermoRawFileReader_linux.4.0.22.nupkg in /tmp):
```{sh}
apt-get update \
  && apt-get install mono-complete vim less unzip r-base -y \
  && cd /tmp/ \
  && unzip /tmp/ThermoRawFileReader_linux.4.0.22.nupkg \
  && gacutil -i lib/ThermoFisher.CommonCore.BackgroundSubtraction.dll \
  && gacutil -i lib/ThermoFisher.CommonCore.Data.dll \
  && gacutil -i lib/ThermoFisher.CommonCore.RawFileReader.dll \
  && echo $?
```
the global assembly cache utility registers the libraries in your mono system.

### 1.3 [Open File Standards](http://www.psidev.info/)
support through the Bioconductor [mzR](http://bioconductor.org/packages/mzR/) package. 

## 2. Installation guide

please note: due to the data size (>=40MB) download can take a while
```{r}
# install.packages("devtools")
library("devtools")
devtools::install_github("fgcz/rawDiag", build_vignettes = FALSE)
```

or request a source package from the authors.

## 3. Demonstration

### 3.1 R commandline code snippet

"Hello; World!" example on the R command line

```{r}
library(rawDiag)
load(file.path(path.package(package = "rawDiag"),
                 file.path("extdata", "PXD006932_Exp3A_smp.RData")))
                 
PlotPrecursorHeatmap(PXD006932_Exp3A_HeLa_1ug_60min_7500_02)
PlotMassDistribution(PXD006932_Exp3A_HeLa_1ug_60min_7500_02)
```

### 3.2 An interactive shiny example

```{r}
# install.packages("shiny")
# install.packages("DT")
library(shiny)
rawDiag_shiny <- system.file('shiny', 'demo', package = 'rawDiag')
shiny::runApp(rawDiag_shiny, display.mode = 'normal')
```

### 3.3 An interactive shiny example running on docker 

source: [dockerhub](https://hub.docker.com/r/cpanse/rawdiag/)

```
docker pull cpanse/rawdiag \
&& docker run -it -p 8787:8787 cpanse/rawdiag R -e "library(shiny); \
   rawDiag_shiny <- system.file('shiny', 'demo', package = 'rawDiag'); \
   shiny::runApp(rawDiag_shiny, display.mode = 'normal', port=8787, host='0.0.0.0')"
```

connect with your web browser to http://yourdockerhostname:8787

## 4. Instructions for use

read the vignettes.

```{r}
browseVignettes('rawDiag')
```

## 5. Useful Links
- http://planetorbitrap.com/rawfilereader
- [screen recording (3:02 minutes, size 47MB, no audio track)](http://fgcz-ms.uzh.ch/~cpanse/PAPERS/pr-2018-001736.mov)
- [shiny demo on our compute server](http://fgcz-ms-shiny.uzh.ch:8080/rawDiag-demo/)
- *rawDiag - an R package supporting rational LC-MS method optimization for bottom-up proteomics*
Christian Trachsel, Christian Panse, Tobias Kockmann, Witold Eryk Wolski, Jonas Grossmann, Ralph Schlapbach
bioRxiv 304485; doi: https://doi.org/10.1101/304485
(manuscript submitted to Journal of Proteome Research; **pr-2018-001736**).

- ftp://massive.ucsd.edu/MSV000082389/raw/rawDiag/raw/

- [ASMS 2018 poster as PDF(1.8M, md5=dab9388c1a465d931e9d2345119a2827)](http://fgcz-ms.uzh.ch/~cpanse/ASMS2018_ID291250.pdf)
