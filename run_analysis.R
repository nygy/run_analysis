# ------------------------------------------------------------------------------------------------
# script prepared for Getting and Cleaning Data, Coursera course
# see README.md for further details
# Note: Row data is assumed to be in the working directory
# 2015.01.19. - NyGy
# ------------------------------------------------------------------------------------------------

#Loading row data 
Person_test <- read.table("./test/subject_test.txt", quote="\"")
Person_train <- read.table("./train/subject_train.txt", quote="\"")
X_test <- read.table("./test/X_test.txt", quote="\"")
y_test <- read.table("./test/y_test.txt", quote="\"")
X_train <- read.table("./train/X_train.txt", quote="\"")
y_train <- read.table("./train/y_train.txt", quote="\"")
Features <- read.table("features.txt", quote="\"")
Activity_labels <- read.table("activity_labels.txt", quote="\"")

#Defining descriptive names
Activity_names <- Activity_labels[,2]
y_test[,2] <- Activity_names[y_test[,1]]
y_train[,2] <- Activity_names[y_train[,1]]
Activities <- rbind(y_test, y_train)
names(Activities) <- c("ActivityID", "ActivityName")

#Merging test and training subjects to a common data frame
All_person <- rbind(Person_test, Person_train)
colnames(All_person) <- "PersonID"

#Merging test and training data frames 
All_data <- rbind(X_test, X_train)
names(All_data) <- Features[,2]
All_data <- All_data[,grepl("mean|std", names(All_data))]
Full_dataset <- (cbind(All_person, Activities, All_data))

#Compiling the output tidy data
Tidy_dataset <- aggregate(Full_dataset, by=list(Full_dataset$PersonID,Full_dataset$ActivityName), FUN=mean)
Tidy_dataset$PersonID <- NULL 
Tidy_dataset$ActivityName <- NULL 
colnames(Tidy_dataset)[1] <- "PersonID"
colnames(Tidy_dataset)[2] <- "ActivityName"

#Writing to file
write.table(Tidy_dataset, "Tidy_dataset.txt",sep=" ",row.name=FALSE)