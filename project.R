#Perform k-means clustering on training set to determine k centroids per class.
#Perform k-NN classification of test data with centroids.


# Install packages
install.packages("class")
#install.packages("ElemStatLearn")
install.packages("cluster")

# Load Libraries
library(class)
#library(ElemStatLearn)
library(cluster)


# Set Working Directory
setwd("~/GitHub/pstat131-project")

# Load Train sets
x.train = read.table("UCI HAR Dataset/train/X_train.txt")
subject.train = read.table("UCI HAR Dataset/train/subject_train.txt")
y.train = read.table("UCI HAR Dataset/train/y_train.txt")

# Load Test Sets
x.test = read.table("UCI HAR Dataset/test/X_test.txt")
subject.test = read.table("UCI HAR Dataset/test/subject_test.txt")
y.test = read.table("UCI HAR Dataset/test/y_test.txt")



cl <- kmeans(x.train, centers=10)
plot(cl$cluster,cl$center)
