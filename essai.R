setwd("/home/bird/shapeit/resultatshapeit_data_famille_LAP_duohmm")
getwd()

haps<-read.table("gwas-duohmm.haps", sep=" ")
head(haps)
indiv<-read.table("gwas-duohmm.sample", sep=" ", header=TRUE)
head(indiv)
dim(indiv)

#liste des individus et des SNPs d'intéret
liste<-read.table("liste")
head(liste)
dim(liste)


#on obtient le numero des lignes des individus qui nous intéressent.
liste$V2<-gsub("rs","00",liste$V2)
liste$V3<-gsub("rs","00",liste$V3)
haps$V2<-gsub("rs","00",haps$V2)


for (i in 1:dim(liste)[1])
{	for (j in 1:dim(indiv)[1])
	{	if (as.character(liste$V1[i])==as.character(indiv$ID_2[j]))
		{ ligne[i]<-data.frame(j) } 
	}
#on recupère les haplotype des individus qui nous intéressent
	for (j in 1:dim(haps)[2])
	{	if (as.numeric(liste$V2[i])<=as.numeric(haps$V2[j]) & as.numeric(liste$V3[i])>=as.numeric(haps$V2[j]))
		{haplotype<-data.frame(haps$V4, haps$V5)}
	}
#donne les haplotypes pour les individus d'interets

}



	



		

	


		

