complete<-function(directory, id=1:332){
  setwd(file.path("/home/dario/coursera-data/rprog_data_specdata/",directory))
  files<-list.files()
  data_list=NULL
  for (d in 1:length(id)){
    index<-id[d]
    f<-read.csv(files[index])
    n<-nrow(na.omit(f))
    r<-data.frame(index,n)
    data_list=rbind(data_list,r)
  }
  colnames(data_list)<-c("id","nobs")
  return(data_list)
}