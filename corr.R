corr<- function(directory, threshold = 0){
directory <- "./specdata"
specdatafiles <- list.files(directory)
specdatapaths <- paste(directory, specdatafiles, sep = "/")
cor_vec <- as.numeric(c())
	for (i in 1:332){
		curr_file <- read.csv(specdatapaths[i], header = T, sep = ",")
		x<-0
		for (j in 1:nrow(curr_file)){
			if (!is.na(curr_file[j, "nitrate"]) & !is.na(curr_file[j,"sulfate"])){
				x<-x+1
				
			}
		}
		if (x>threshold){
		n <- !is.na(curr_file[,"nitrate"])
		s <- !is.na(curr_file[,"sulfate"])
		cor_v<- as.numeric(cor(n,s))
		cor_vec <- c(cor_vec, cor_v)
		}
		
		}
	print (cor_vec)
	}

cr <- corr(directory, 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
	
		