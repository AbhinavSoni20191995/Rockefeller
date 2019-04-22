dat <- read.csv("cell.csv")

library(ggplot2)

Grade <- function(Children_MCH_obj_Count)
{ 
  if(dat$Children_MCH_obj_Count> '0' & dat$Children_MCH_obj_Count< '10'){ 
    return(1) }
  else if(dat$Children_MCH_obj_Count> '10' & dat$Children_MCH_obj_Count< '50'){
    return(2) } 
  else if(dat$Children_MCH_obj_Count> '50' & dat$Children_MCH_obj_Count< '150')
  { return(3) }
  else { return(0)} 
}  

Grade_Value <- NULL
for(i in 1:nrow(dat))
{
  Grade_Value <- c(Grade_Value, Grade(dat[i,Children_MCH_obj_Count]))
}

dat$Grade_Value <- as.factor(Grade_Value)


ggplot( dat, aes(x= Parent_Nucleus, fill = Grade_Value)) +
  geom_bar() +
  xlab("Nuclei Number") +
  ylab("RNA transcript_Grade") +
  labs(fill= "Grade")
