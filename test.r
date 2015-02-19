colnames(subject)<-"subject"

# Adding the subject & activity codes to the data

xdatams<-cbind (subject,ydata,xdatameansd)

# Now drop the freq means as they are repeats

dropmnames <- grep("meanFreq", names(xdatams),ignore.case=TRUE)

xdatams <-xdatams[,-dropmnames]

rm(xdatameansd)

##now have to label activity with 
