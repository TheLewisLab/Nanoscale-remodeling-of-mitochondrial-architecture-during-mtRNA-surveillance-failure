Kakudji, et al. 2026 R code README

Title:
Nanoscale remodeling of mitochondrial architecture during mtRNA surveillance failure

Overview:
Code converts pixel intensity values from micrograph linescans of many individual mitochondria into a stacked plot in which each row represents one organelle.

Documentation:
Please see attached .R file.

Working example:
>TOM20Araw<-read.table("TOM20_A.txt", sep="")#read in data
>TOM20Amatrix<-data.matrix(TOM20Araw)#convert to matrix object
>ATP5BAraw<-read.table("ATP5B_A.txt", sep="")#read in data
>ATP5BAmatrix<-data.matrix(ATP5BAraw)#convert to matrix object
>J2Araw<-read.table("J2_A.txt", sep="")#read in data
>J2Amatrix<-data.matrix(J2Araw)#convert to matrix object
>AJ2ATP5BTOM20bind<-cbind(J2Amatrix, ATP5BAmatrix, TOM20Amatrix)#bind into single matrix object for visualization
>heatmap.2(AJ2ATP5BTOM20bind,main="type A", col = cm.colors(256), ylab="", xlab="",labRow = F,labCol = F,trace="none",Colv = F,colsep = columnMarkers,sepcolor="black",sepwidth = c(0.0, 0.0), key.title = "",keysize = 2,key.ylab = NA,scale = "row")#plot heat map


System Requirements and Dependencies:
#R version used in the study
R version 4.2.3 (2023-03-15) -- "Shortstop Beagle"
Copyright (C) 2023 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)
#R packages used in the study
RColorBrewer 1.1-3
gplots 3.3.0

Installation:
Package dependencies are automatically installed when running the code.

Folder structure:
N/A

Limitations:
N/A

Citation:
Please cite this code using the citation provided in the associated Zenodo record.

License:
MIT License 

Acknowledgements:
This research is supported as part of Aligning Science Across Parkinson’s (ASAP) (https://ror.org/03zj4c476) [ASAP-000350], a research initiative managed by the Coalition for Aligning Science (CAS) (https://ror.org/00rf4ez40). The Michael J. Fox Foundation for Parkinson’s Research (MJFF) (https://ror.org/03arq3225) is the funding and strategic partner (J.H.H, and S.C.L.). A portion of this work was supported by the National Institutes of Health grant R35GM147218 (S.C.L.). A portion of this work was supported by the University of California Cancer Research Coordinating Committee grant C27DF11281 (E.V.K.). 

Additional Items:
N/A
