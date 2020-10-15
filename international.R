### INTERNATIONAL EXAMPLES OF FOP, BUISNESS
##############################################

# FOP ADOPTION
#============================================================

FOP_adoption_b <- Data %>% # FOP USE TABLE
  filter(!is.na(Q62)) %>% 
  count(Q62) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q62)))) * 100,0),'%')) %>% 
  rename('Respons' = Q62,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

FOP_adoption_b <- FOP_adoption_b %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(FOP_adoption_b$`Number of Responses`),
          paste(sum(parse_number(FOP_adoption_b$`Percentage of Responses`)),'%')))

### INTERNATIONAL EXAMPLES OF FOP, INDERVIDUALS AND ORGANISATIONS
##############################################

# FOP ADOPTION
#============================================================

FOP_adoption_io <- Data %>% # FOP USE TABLE
  filter(!is.na(Q63)) %>% 
  count(Q63) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q63)))) * 100,0),'%')) %>% 
  rename('Respons' = Q63,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

FOP_adoption_io <- FOP_adoption_io %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(FOP_adoption_io$`Number of Responses`),
          paste(sum(parse_number(FOP_adoption_io$`Percentage of Responses`)),'%')))

# NUTRI-SCORE OR CHILEAN WARNING LABLE
#============================================================

ns_cwl <- Data %>% # FOP USE TABLE
  filter(!is.na(Q65),
         Q63 == 'Yes') %>% 
  count(Q65) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q65),
                                                Q63 == 'Yes'))) * 100,0),'%')) %>% 
  rename('Respons' = Q65,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

ns_cwl <- ns_cwl %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(ns_cwl$`Number of Responses`),
          paste(sum(parse_number(ns_cwl$`Percentage of Responses`)),'%')))

# LIKE/DISLIKE NUTRI-SCORE
#=============================================================

# COLOR
#------------------------------------------------------

ns_color <- Data %>% # FOP USE TABLE
  filter(!is.na(Q67)) %>% 
  count(Q67) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q67)))) * 100,0),'%')) %>% 
  rename('Respons' = Q67,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

ns_color <- ns_color %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(ns_color$`Number of Responses`),
          paste(sum(parse_number(ns_color$`Percentage of Responses`)),'%')))

# LETTERS
#-------------------------------------------------------

use_l <- Data %>% # FOP USE TABLE
  filter(!is.na(Q68)) %>% 
  count(Q68) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q68)))) * 100,0),'%')) %>% 
  rename('Respons' = Q68,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

use_l <- use_l %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(use_l$`Number of Responses`),
          paste(sum(parse_number(use_l$`Percentage of Responses`)),'%')))

# SPECIFIC NURTIENTS AND PORTION SIZE
#----------------------------------------------------

ni_ps <- Data %>% # FOP USE TABLE
  filter(!is.na(Q69)) %>% 
  count(Q69) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q69)))) * 100,0),'%')) %>% 
  rename('Respons' = Q69,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

ni_ps <- ni_ps %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(ni_ps$`Number of Responses`),
          paste(sum(parse_number(ni_ps$`Percentage of Responses`)),'%')))

# SINGLE SCORE
#-----------------------------------------------------

single_score <- Data %>% # FOP USE TABLE
  filter(!is.na(Q70)) %>% 
  count(Q70) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q70)))) * 100,0),'%')) %>% 
  rename('Respons' = Q70,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

single_score <- single_score %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(single_score$`Number of Responses`),
          paste(sum(parse_number(single_score$`Percentage of Responses`)),'%')))

# LIKE/DISLIKE CHILEAN WARNING LABLE
#=============================================================

# COLOR
#------------------------------------------------------

cwl_color <- Data %>% # FOP USE TABLE
  filter(!is.na(Q72)) %>% 
  count(Q72) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q72)))) * 100,0),'%')) %>% 
  rename('Respons' = Q72,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

cwl_color <- cwl_color %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(cwl_color$`Number of Responses`),
          paste(sum(parse_number(cwl_color$`Percentage of Responses`)),'%')))

# ONLY LESS HEALTHY
#------------------------------------------------------

less_healthy <- Data %>% # FOP USE TABLE
  filter(!is.na(Q73)) %>% 
  count(Q73) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q73)))) * 100,0),'%')) %>% 
  rename('Respons' = Q73,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

less_healthy <- less_healthy %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(less_healthy$`Number of Responses`),
          paste(sum(parse_number(less_healthy$`Percentage of Responses`)),'%')))

# LACK OF SPECIFIC INFORMATION
#------------------------------------------------------

specific_ni <- Data %>% # FOP USE TABLE
  filter(!is.na(Q74)) %>% 
  count(Q74) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q74)))) * 100,0),'%')) %>% 
  rename('Respons' = Q74,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

specific_ni <- specific_ni %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(specific_ni$`Number of Responses`),
          paste(sum(parse_number(specific_ni$`Percentage of Responses`)),'%')))

# EVIDENCE OF IMPACT
#========================================================

# IDENTIFICATION OF HEALTHY CHOICES
#------------------------------------------------------

identification <- Data %>% # FOP USE TABLE
  filter(!is.na(Q76)) %>% 
  count(Q76) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q76)))) * 100,0),'%')) %>% 
  rename('Respons' = Q76,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

identification <- identification %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(identification$`Number of Responses`),
          paste(sum(parse_number(identification$`Percentage of Responses`)),'%')))

# PURCHASING BEHAVIOUR
#------------------------------------------------------

purchasing <- Data %>% # FOP USE TABLE
  filter(!is.na(Q78)) %>% 
  count(Q78) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q78)))) * 100,0),'%')) %>% 
  rename('Respons' = Q78,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

purchasing <- purchasing %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(purchasing$`Number of Responses`),
          paste(sum(parse_number(purchasing$`Percentage of Responses`)),'%')))