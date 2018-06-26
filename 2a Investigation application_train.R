IV <- select(application_train, 2:122) %>%
  create_infotables(y="TARGET", bins=10, parallel=FALSE)

IV$Summary
IV$Tables$EXT_SOURCE_3
IV$Tables$EXT_SOURCE_2
IV$Tables$EXT_SOURCE_1
IV$Tables$DAYS_EMPLOYED
IV$Tables$DAYS_BIRTH
IV$Tables$OCCUPATION_TYPE
IV$Tables$ORGANIZATION_TYPE