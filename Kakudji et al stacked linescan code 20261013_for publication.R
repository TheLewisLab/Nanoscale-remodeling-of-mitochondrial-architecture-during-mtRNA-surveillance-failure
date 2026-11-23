library("RColorBrewer")
library("gplots")

columnMarkers<-NULL
columnMarkers<-list(97,194)

#J2 dsRNA data version with split categories
J2Araw<-read.table("J2_A.txt", sep="")
J2Amatrix<-data.matrix(J2Araw)

J2Braw<-read.table("J2_B.txt", sep="")
J2Bmatrix<-data.matrix(J2Braw)

J2Craw<-read.table("J2_C.txt", sep="")
J2Cmatrix<-data.matrix(J2Craw)

J2Draw<-read.table("J2_D.txt", sep="")
J2Dmatrix<-data.matrix(J2Draw)

####################################

#ATP5B version with split categories
ATP5BAraw<-read.table("ATP5B_A.txt", sep="")
ATP5BAmatrix<-data.matrix(ATP5BAraw)

ATP5BBraw<-read.table("ATP5B_B.txt", sep="")
ATP5BBmatrix<-data.matrix(ATP5BBraw)

ATP5BCraw<-read.table("ATP5B_C.txt", sep="")
ATP5BCmatrix<-data.matrix(ATP5BCraw)

ATP5BDraw<-read.table("ATP5B_D.txt", sep="")
ATP5BDmatrix<-data.matrix(ATP5BDraw)

####################################

#TOM20 version with split categories
TOM20Araw<-read.table("TOM20_A.txt", sep="")
TOM20Amatrix<-data.matrix(TOM20Araw)

TOM20Braw<-read.table("TOM20_B.txt", sep="")
TOM20Bmatrix<-data.matrix(TOM20Braw)

TOM20Craw<-read.table("TOM20_C.txt", sep="")
TOM20Cmatrix<-data.matrix(TOM20Craw)

TOM20Draw<-read.table("TOM20_D.txt", sep="")
TOM20Dmatrix<-data.matrix(TOM20Draw)

########################

#using cbind() to keep imaging channel datasets together in order
#making plots with concatenated columns and color scaling to rows to address variation in fluorescence intensity between channels
pdf("typeA_linescan_visualization_v2.pdf",family="Helvetica",width=6,height=6,)
AJ2ATP5BTOM20bind<-cbind(J2Amatrix, ATP5BAmatrix, TOM20Amatrix)
heatmap.2(AJ2ATP5BTOM20bind,main="type A", col = cm.colors(256), ylab="", xlab="",labRow = F,labCol = F,trace="none",Colv = F,colsep = columnMarkers,sepcolor="black",sepwidth = c(0.0, 0.0), key.title = "",keysize = 2,key.ylab = NA,scale = "row")
dev.off()

pdf("typeB_linescan_visualization_v2.pdf",family="Helvetica",width=6,height=6,)
BJ2ATP5BTOM20bind<-cbind(J2Bmatrix, ATP5BBmatrix, TOM20Bmatrix)
heatmap.2(BJ2ATP5BTOM20bind,main="type B", col = cm.colors(256), ylab="", xlab="",labRow = F,labCol = F,trace="none",Colv = F,colsep = columnMarkers,sepcolor="black",sepwidth = c(0.0, 0.0), key.title = "",keysize = 2,key.ylab = NA,scale = "row")
dev.off()

pdf("typeC_linescan_visualization_v2.pdf",family="Helvetica",width=6,height=6,)
CJ2ATP5BTOM20bind<-cbind(J2Cmatrix, ATP5BCmatrix, TOM20Cmatrix)
heatmap.2(CJ2ATP5BTOM20bind,main="type C", col = cm.colors(256), ylab="", xlab="",labRow = F,labCol = F,trace="none",Colv = F,colsep = columnMarkers,sepcolor="black",sepwidth = c(0.0, 0.0), key.title = "",keysize = 2,key.ylab = NA,scale = "row")
dev.off()

pdf("typeD_linescan_visualization_v2.pdf",family="Helvetica",width=6,height=6,)
DJ2ATP5BTOM20bind<-cbind(J2Dmatrix, ATP5BDmatrix, TOM20Dmatrix)
heatmap.2(DJ2ATP5BTOM20bind,main="type D", col = cm.colors(256), ylab="", xlab="",labRow = F,labCol = F,trace="none",Colv = F,colsep = columnMarkers,sepcolor="black",sepwidth = c(0.0, 0.0), key.title = "",keysize = 2,key.ylab = NA,scale = "row")
dev.off()
