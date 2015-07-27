args <- commandArgs(trailingOnly = TRUE)

file <- args[1]
iterations <- args[2]

ranks <- read.table(file, header=FALSE)
sorted <- ranks[order(ranks[,2], decreasing = TRUE),]

write.table(sorted, file = paste0("sorted_ranks_", iterations ,".out"), quote = FALSE, sep = " ", row.names = FALSE, col.names = FALSE)

