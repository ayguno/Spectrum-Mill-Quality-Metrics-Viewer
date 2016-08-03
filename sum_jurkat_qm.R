
#This function gets the quality metrics file as an input and reports the relevant values 

sum_jurkat_qm<-function(qm){
  
  QM<-read.csv2(qm,header=TRUE)
  
  Di<-QM$File[1]
  A<-QM$MS.MS.spectra.collected.C[1]
  B<-QM$MS.MS.spectra.valid.V[1]
  C<-QM$Collection.Yield.V.C....[1]
  D<-QM$Validation.Yield.V.F....[1]
  E<-QM$Mean.Precursor.Mass.Error..ppm.[1]
  X<-QM$Time.span.mid.90..matched.spectra.in.run..min.[1]
  Y<-QM$Median.MS1.peak.width.mid.90..matched.spectra..sec.[1]
  G<-QM$Gradient.Shape.mid.90..matched.spectra.in.run[1]
  H<-QM$Median.MS2.fill.time.mid.90..matched.spectra..msec.[1]
  I<-QM$Distinct.Peps.CS.Total....[1]
  
  s<-data.frame(Jurkat=Di,
                MS.MS.spectra.collected.C=A,
                MS.MS.spectra.valid.V=B,
                Collection.Yield.V.C=C,
                Validation.Yield.V.F=D,
                Mean.Precursor.Mass.Error..ppm=E,
                Time.span.mid.90..matched.spectra.in.run..min=X,
                Median.MS1.peak.width.mid.90..matched.spectra..sec=Y,
                Gradient.Shape.mid.90..matched.spectra.in.run=G,
                Median.MS2.fill.time.mid.90..matched.spectra..msec=H,
                Distinct.Peps.CS.Total=I)
  
  s<-t(s)
  
  write.csv(file=paste(QM$File[1],"QM_summary.csv",sep="_"),s)
  
}