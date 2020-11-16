pollutantmean<-function(directory, pollutant, id=1:332){
  setwd(file.path("/home/dario/coursera-data/rprog_data_specdata/",directory))
  files<-list.files()
  p<-c()
  for (d in id){
    f<-read.csv(files[d])
    p<-c(p,na.omit(f[[pollutant]]))
  }
  mean(p)
}
