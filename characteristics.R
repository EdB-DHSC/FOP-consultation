##test
###RESPONDER CHARACTERISTICS
###########################################

# RESPONSE TYPE
#===================================================================
#EMAIL
#--------------------------------------------------------------------
# 
# responder_email <- Data %>% # RESPONDANT TYPE GRAPH
#   filter(Q1 == 'email') %>% 
#   mutate(Q6 = case_when(Q6 == 'As an individual over the age of 13' ~ 'As an Individual',
#                         Q6 == 'As an individual under the age of 13' ~ 'As an Individual',
#                         Q6 == 'On the behalf of a business' ~ 'On the behalf of a business',
#                         Q6 == 'On the behalf of an organisation' ~ 'On the behalf of an organisation')) %>% 
#   count(Q6) %>% 
#   mutate(percent = paste(round((n/nrow(Data %>% 
#                                          filter(Q1 == 'email'))) * 100,1),'%')) %>% 
#   rename('Type of Responder' = Q6,
#          'Number of Responses' = n,
#          'Percentage of Responses' = percent)
# 
# responder_email <- responder_email %>% # ADD TITLE TO TABLE
#   rbind(c('Total',
#           sum(responder_email$`Number of Responses`),
#           paste(sum(parse_number(responder_email$`Percentage of Responses`)),'%')))
# 
# responder_email_gg <- Data %>% # RESPONDANT TYPE GRAPH
#   filter(Q1 == 'email') %>% 
#   mutate(Q6 = case_when(Q6 == 'As an individual over the age of 13' ~ 'Individual',
#                         Q6 == 'As an individual under the age of 13' ~ 'Individual',
#                         Q6 == 'On the behalf of a business' ~ 'Business',
#                         Q6 == 'On the behalf of an organisation' ~ 'Organisation')) %>% 
#   count(Q6) %>% 
#   mutate(percent = round((n/nrow(Data)) * 100,2)) %>% 
#   ggplot(aes(Q6,n,text = paste('Responder Type:', Q6, 
#                                '\n','Number of Responders:',n,
#                                '\n', 'Percentage of Responders:',percent,'%'))) +
#   geom_bar(stat = 'identity',fill = 'blue')+
#   theme_bw() +
#   coord_flip() +
#   labs(y = 'Number of Reponses',
#        x = 'Responder', 
#        title = 'Type of Responder')
# 
# # ONLINE
# #----------------------------------------------------------------------------
# 
# responder_online <- Data %>% # RESPONDANT TYPE GRAPH
#   filter(Q1 != 'email') %>% 
#   mutate(Q6 = case_when(Q6 == 'As an individual over the age of 13' ~ 'As an Individual',
#                         Q6 == 'As an individual under the age of 13' ~ 'As an Individual',
#                         Q6 == 'On the behalf of a business' ~ 'On the behalf of a business',
#                         Q6 == 'On the behalf of an organisation' ~ 'On the behalf of an organisation')) %>% 
#   count(Q6) %>% 
#   mutate(percent = paste(round((n/nrow(Data %>% 
#                                          filter(Q1 != 'email'))) * 100,1),'%')) %>% 
#   rename('Type of Responder' = Q6,
#          'Number of Responses' = n,
#          'Percentage of Responses' = percent)
# 
# responder_online <- responder_online %>% # ADD TITLE TO TABLE
#   rbind(c('Total',
#           sum(responder_online$`Number of Responses`),
#           paste(sum(parse_number(responder_online$`Percentage of Responses`)),'%')))
# 
# responder_online_gg <- Data %>% # RESPONDANT TYPE GRAPH
#   filter(Q1 != 'email') %>% 
#   mutate(Q6 = case_when(Q6 == 'As an individual over the age of 13' ~ 'Individual',
#                         Q6 == 'As an individual under the age of 13' ~ 'Individual',
#                         Q6 == 'On the behalf of a business' ~ 'Business',
#                         Q6 == 'On the behalf of an organisation' ~ 'Organisation')) %>% 
#   count(Q6) %>% 
#   mutate(percent = round((n/nrow(Data)) * 100,2)) %>% 
#   ggplot(aes(Q6,n,text = paste('Responder Type:', Q6, 
#                                '\n','Number of Responders:',n,
#                                '\n', 'Percentage of Responders:',percent,'%'))) +
#   geom_bar(stat = 'identity',fill = 'blue')+
#   theme_bw() +
#   coord_flip() +
#   labs(y = 'Number of Reponses',
#        x = 'Responder', 
#        title = 'Type of Responder')

# TOTAL
#----------------------------------------------------------------------------

responder_tot <- Data %>% # RESPONDANT TYPE GRAPH
 count(Q3) %>% 
  mutate(percent = paste(round((n/nrow(Data)) * 100,1),'%')) %>% 
  rename('Type of Responder' = Q3,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

responder_tot <- responder_tot %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(responder_tot$`Number of Responses`),
          paste(sum(parse_number(responder_tot$`Percentage of Responses`)),'%')))

responder_tot_gg <- Data %>% # RESPONDANT TYPE GRAPH
  count(Q3) %>% 
  mutate(percent = round((n/nrow(Data)) * 100,2)) %>% 
  ggplot(aes(Q3,n,text = paste('Responder Type:', Q3, 
                               '\n','Number of Responders:',n,
                               '\n', 'Percentage of Responders:',percent,'%'))) +
  geom_bar(stat = 'identity',fill = 'blue')+
  theme_bw() +
  coord_flip() +
  labs(y = 'Number of Reponses',
       x = 'Responder', 
       title = 'Type of Responder')

# RESPONDING INDIVIDUALS
#===================================================================================
num_ind <- nrow(Data %>% 
                  filter(Q3 == 'an individual'))

sector_ind <- Data %>% # TABLE OF SECTOR INDIVIDUAL WORKS IN
  filter(Q3 == 'an individual',
         !is.na(Q24)) %>% 
  count(Q24) %>% 
  filter(n>10) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                   filter(Q3 == 'an individual',
                                          !is.na(Q24)))) * 100,0),'%')) %>%  
  rename('Sector' = Q24,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

sector_ind <- sector_ind %>%
  rbind(c('Total',
          sum(sector_ind$`Number of Responses`),
          paste(sum(parse_number(sector_ind$`Percentage of Responses`)),'%')))

ethnicity_ind <- Data %>% # TABLE OF INDIVIDUALS ETHNICITY
  filter(Q3 == 'an individual',
         !is.na(Q15)) %>% 
  count(Q15) %>% 
  filter(n>10) %>% 
  arrange(-n) %>%
  mutate(percent = paste(round((n/nrow(Data %>% 
                                   filter(Q3 == 'an individual',
                                          !is.na(Q15)))) * 100,0),'%')) %>%  
  rename('Ethnicity' = Q15,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

ethnicity_ind <- ethnicity_ind %>%
  rbind(c('Total', 
          sum(ethnicity_ind$`Number of Responses`),
          paste(sum(parse_number(ethnicity_ind$`Percentage of Responses`)),'%')))

porg_ind <- Data %>% # TABLE OF INDIVIDUALS PATENTAL STATUS
  filter(Q3 == 'an individual',
         !is.na(Q17)) %>% 
  count(Q17) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                   filter(Q3 == 'an individual',
                                          !is.na(Q17)))) * 100,0),'%')) %>% 
  rename('Parent/Gaurdian' = Q17,
         'Number of Responses' = n,
         'Percentage of Responses' = percent) 

porg_ind <- porg_ind %>%
  rbind(c('Total',
          sum(porg_ind$`Number of Responses`),
          paste(sum(parse_number(porg_ind$`Percentage of Responses`)),'%')))

#DISABILITY
#====================================================================

disability_ind <- Data %>% # TABLE OF INDIVIDUALS DISABILITY STATUS
  filter(Q3 == 'an individual',
         !is.na(Q21)) %>% 
  count(Q21) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                   filter(Q3 == 'an individual',
                                          !is.na(Q21)))) * 100,0),'%')) %>% 
  rename('Do you consider yourself disabled' = Q21,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

disability_ind <- disability_ind %>%
  rbind(c('Total',
          sum(disability_ind$`Number of Responses`),
          paste(sum(parse_number(disability_ind$`Percentage of Responses`)),'%'))) 

#LONG TERM HEALTH CONDITION
#====================================================================

lthc_ind <- Data %>% # TABLE OF INDIVIDUALS DISABILITY STATUS
  filter(Q3 == 'an individual',
         !is.na(Q22)) %>% 
  count(Q22) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 == 'an individual',
                                                !is.na(Q22)))) * 100,0),'%')) %>% 
  rename('Do you consider yourself disabled' = Q22,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

lthc_ind <- lthc_ind %>%
  rbind(c('Total',
          sum(lthc_ind$`Number of Responses`),
          paste(sum(parse_number(lthc_ind$`Percentage of Responses`)),'%'))) 

#LOCATION
#====================================================================

location_ind <- Data %>% # TABLE OF INDIVIDUALS DISABILITY STATUS
  filter(Q3 == 'an individual',
         !is.na(Q16)) %>% 
  count(Q16) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 == 'an individual',
                                                !is.na(Q16)))) * 100,0),'%')) %>% 
  rename('Do you consider yourself disabled' = Q16,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

location_ind <- location_ind %>%
  rbind(c('Total',
          sum(location_ind$`Number of Responses`),
          paste(sum(parse_number(location_ind$`Percentage of Responses`)),'%'))) 

#GENDER
#====================================================================

gender_ind <- Data %>% # TABLE OF INDIVIDUALS DISABILITY STATUS
  filter(Q3 == 'an individual',
         !is.na(Q14)) %>% 
  count(Q14) %>% 
  arrange(-n) %>% 
  filter(n>1) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 == 'an individual',
                                                !is.na(Q14)))) * 100,0),'%')) %>% 
  rename('Do you consider yourself disabled' = Q14,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

gender_ind <- gender_ind %>%
  rbind(c('Total',
          sum(gender_ind$`Number of Responses`),
          paste(sum(parse_number(gender_ind$`Percentage of Responses`)),'%'))) 

# INCOME
#=====================================================================

income_ind <- Data %>% # TABLE OF INDIVIDUALS INCOME
  filter(Q3 == 'an individual',
         !is.na(Q20)) %>% 
  count(Q20) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                   filter(Q3 == 'an individual',
                                          !is.na(Q20)))) * 100,0),'%')) %>% 
  rename('Income' = Q20,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

income_ind <- income_ind %>%
  rbind(c('Total',
          sum(income_ind$`Number of Responses`),
          paste(sum(parse_number(income_ind$`Percentage of Responses`)),'%')))

# AGE
#=========================================================

age_ind <- Data %>% # TABLE OF age
  filter(Q3 == 'an individual',
         !is.na(Q13)) %>% 
  count(Q13) %>%
  mutate(percent = paste(round((n/nrow(Data %>% 
                                   filter(Q3 == 'an individual',
                                          !is.na(Q13)))) * 100,0),'%')) %>% 
  rename('Child Age' = Q13,
         'Number of Responses' = n,
         'Percentage of Responses' = percent) 

age_ind <- age_ind %>%
  rbind(c('Total',
          sum(age_ind$`Number of Responses`),
          paste(sum(parse_number(age_ind$`Percentage of Responses`)),'%'))) 

# CHILD NUMBER
#=================================================================

nchild_ind <- Data %>% # TABLE OF child age
  filter(Q17 == 'Yes',
         !is.na(Q19)) %>% 
  count(Q19) %>%
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q17 == 'Yes',
                                                !is.na(Q19)))) * 100,0),'%')) %>% 
  rename('Number of Children under 16' = Q19,
         'Number of Responses' = n,
         'Percentage of Responses' = percent) 

nchild_ind <- nchild_ind %>%
  rbind(c('Total',
          sum(nchild_ind$`Number of Responses`),
          paste(sum(parse_number(nchild_ind$`Percentage of Responses`)),'%'))) 


# RESPONDING ORGS 
#=============================================================================
num_o <- nrow(Data %>% 
                 filter(Q3 == 'an organisation'))

sector_o <- Data %>% # TABLE OF BUISINESS OR ORGANISATION SECTOR
  filter(Q3 == 'an organisation') %>% 
  count(Q29) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                   filter(Q3 =='an organisation'))) * 100,0),'%')) %>% 
  rename('Sector' = Q29,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)    

sector_o <- sector_o %>%
  rbind(c('Total',
          sum(sector_o$`Number of Responses`),
          paste(sum(parse_number(sector_o$`Percentage of Responses`)),'%')))

size_o <- Data %>% # TABLE OF BUISINESS OR ORGANISATION SIZE
  filter(Q3 == 'an organisation') %>% 
  count(Q30) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 =='an organisation'))) * 100,0),'%')) %>% 
  rename('Size' = Q30,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)    

size_o <- size_o %>%
  rbind(c('Total',
          sum(size_o$`Number of Responses`),
          paste(sum(parse_number(size_o$`Percentage of Responses`)),'%')))

location_o <- Data %>% # TABLE OF BUISINESS OR ORGANISATION LOCATION
  filter(Q3 == 'an organisation') %>% 
  count(Q31) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 =='an organisation'))) * 100,0),'%')) %>% 
  rename('Location' = Q31,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)    

location_o <- location_o %>%
  rbind(c('Total',
          sum(location_o$`Number of Responses`),
          paste(sum(parse_number(location_o$`Percentage of Responses`)),'%')))

# RESPONDING BUISINESS 
#=============================================================================
num_b <- nrow(Data %>% 
                filter(Q3 == 'a business'))

sector_b <- Data %>% # TABLE OF BUISINESS OR ORGANISATION SECTOR
  filter(Q3 == 'an organisation') %>% 
  count(Q29) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 =='a business'))) * 100,0),'%')) %>% 
  rename('Sector' = Q29,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)    

sector_b <- sector_b %>%
  rbind(c('Total',
          sum(sector_b$`Number of Responses`),
          paste(sum(parse_number(sector_b$`Percentage of Responses`)),'%')))

size_b <- Data %>% # TABLE OF BUISINESS OR ORGANISATION SIZE
  filter(Q3 == 'a business',
         !is.na(Q30)) %>% 
  count(Q30) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 =='a business',
                                                !is.na(Q30)))) * 100,0),'%')) %>% 
  rename('Size' = Q30,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)    

size_b <- size_b %>%
  rbind(c('Total',
          sum(size_b$`Number of Responses`),
          paste(sum(parse_number(size_b$`Percentage of Responses`)),'%')))

location_b <- Data %>% # TABLE OF BUISINESS OR ORGANISATION LOCATION
  filter(Q3 == 'a business') %>% 
  count(Q31) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(Q3 =='a business'))) * 100,0),'%')) %>% 
  rename('Location' = Q31,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)    

location_b <- location_b %>%
  rbind(c('Total',
          sum(location_b$`Number of Responses`),
          paste(sum(parse_number(location_b$`Percentage of Responses`)),'%')))


