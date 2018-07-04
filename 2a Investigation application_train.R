IV <- select(application_train, 2:122) %>%
  create_infotables(y="TARGET", bins=2, parallel=FALSE)

IV$Summary
IV$Tables$EXT_SOURCE_3

application_train_a <- application_train %>%
  filter(EXT_SOURCE_3 <= 0.54)
application_train_b <- application_train %>%
  filter(EXT_SOURCE_3 >= 0.54)
application_train_c <- application_train %>%
  filter(is.na(EXT_SOURCE_3))

IVa <- select(application_train_a, 2:122) %>%
  create_infotables(y="TARGET", bins=2, parallel=FALSE)
IVa$Summary
IVa$Tables$EXT_SOURCE_2

IVb <- select(application_train_b, 2:122) %>%
  create_infotables(y="TARGET", bins=2, parallel=FALSE)
IVb$Summary
IVb$Tables$EXT_SOURCE_2

IVc <- select(application_train_c, 2:122) %>%
  create_infotables(y="TARGET", bins=2, parallel=FALSE)
IVc$Summary
IVc$Tables$EXT_SOURCE_2
