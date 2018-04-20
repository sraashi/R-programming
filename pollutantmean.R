pollutantsmean<- function(directory, pollutant, id = 1:332){
directory <- "./specdata"
specdatafiles <- list.files(directory)
specdatapaths <- paste(directory, specdatafiles, sep = "/")
	mean_data <- c()
	x <- c()
	for (i in id){
		curr_file <- read.csv(specdatapaths[i], header = T, sep = ",")
		data <- curr_file[!is.na(curr_file[,pollutant]), pollutant]
		mean_data <- c(mean_data, data)
		x<- c(x,i)
		
	}
	 mean_results <- mean(mean_data)
	 mean_results
}


