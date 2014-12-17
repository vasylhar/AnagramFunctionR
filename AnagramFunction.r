anagram <- function(arg){
   
c=unique(unlist(strsplit(tolower(arg), " ")))
d=sapply(lapply(strsplit(c, NULL), sort), paste, collapse="")

e=data.frame(table(d))
e=subset(e, Freq >1)

s<-lapply(e$d, function(x) { c[which = d %in% x] })

       return(s)
   }
   
#Test sentence: "I may opt for a top yam for amy amy"   
