bank<- read.csv("C:\\Users\\Prasanna user\\Downloads\\bank.csv")
bank
colnames(bank) <- c("age", "job", "marital", "education", "balance", "loan", "duration", "campaign")
bank<-na.omit(bank)
any(duplicated(bank))
bank<- unique(bank)
cleaned<- clean_names(bank)
cleaned
summary(bank)
bank
hist(bank$age, main = "Age Distribution", xlab = "Age")
hist(bank$balance, main = "Balance Distribution", xlab = "Balance")
hist(bank$duration, main = "duration Distribution", xlab = "duration")
pie(table(bank$loan),main = "Bar chart of marital_status")
pie(table(bank$marital),main = "Bar chart of marital_status")
pie(table(bank$job),main = "Bar chart of marital_status")
pie(table(bank$education),main = "Bar chart of marital_status")
# Load the data
bank_data <- read.csv("path/to/your/bank/data.csv")
# Create new attributes
# Age group
bank_data$age_group <- cut(bank_data$age, breaks=c(18,24,34,44,54,64,100), labels=c("18-
24","25-34","35-44","45-54","55-64","65+"))
# Education level
bank_data$education_level <- ifelse(bank_data$education == 1, "primary",
ifelse(bank_data$education == 2, "secondary", "tertiary"))