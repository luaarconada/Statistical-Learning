# Extract 10,000 random observations
data_whole <- star_classification[sample(nrow(data), 10000), ]

summary(star_classification)

# Export the sampled data as a CSV file
write.csv(data_whole, "star_classification.csv", row.names = FALSE)
