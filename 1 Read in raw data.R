unzip_csv <- function(FILENAME){
  loc <- paste("1 Raw data/", FILENAME, ".csv.zip", sep = "")
  file <- paste(FILENAME, ".csv", sep = "")
  FILENAME  <- read.csv(unz(loc, file), header = TRUE, sep = ",")
  
  return(FILENAME)
}
application_test <- unzip_csv("application_test")
application_train <- unzip_csv("application_train")
bureau <- unzip_csv("bureau")
bureau_balance <- unzip_csv("bureau_balance")
credit_card_balance <- unzip_csv("credit_card_balance")
installments_payments <- unzip_csv("installments_payments")
POS_CASH_balance <- unzip_csv("POS_CASH_balance")
previous_application <- unzip_csv("previous_application")