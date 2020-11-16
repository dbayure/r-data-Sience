corr<-function(directory, threshold=0){
  setwd(file.path("/home/dario/coursera-data/rprog_data_specdata/",directory))
  files<-list.files()
  data_list=NULL
  for (d in 1:length(files)){
    f<-read.csv(files[d])
    p<-na.omit(f)
    if (nrow(p) > threshold){
      c<-cor(p[[2]], p[[3]], method = c("pearson", "kendall", "spearman"))
      data_list=rbind(data_list,c)
    }
  }
  return(data_list)
}