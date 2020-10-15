##PSED
###########################################

PSED1 <- Data %>% 
  filter(!is.na(Q89)) %>% 
  count(Q89) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q89)))) * 100,1),'%')) %>% 
  rename('Response' = Q89,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

PSED1 <- PSED1 %>% # ADD TITLE TO TABLE
  rbind(c('Total',
          sum(PSED1$`Number of Responses`),
          paste(sum(parse_number(PSED1$`Percentage of Responses`)),'%')))

### ELIMINATING DISCRIMINATION
#============================================================

PSED2a <- Data %>% 
  filter(!is.na(Q91)) %>% 
  count(Q91) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q91)))) * 100,1),'%')) %>% 
  rename('Response' = Q91,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

PSED2a <- PSED2a %>% # ADD TITLE TO TABLE
  rbind(c('Total',
          sum(PSED2a$`Number of Responses`),
          paste(sum(parse_number(PSED2a$`Percentage of Responses`)),'%')))

### ADVANCING EQUALITY
#============================================================

PSED2b <- Data %>% 
  filter(!is.na(Q92)) %>% 
  count(Q92) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q92)))) * 100,1),'%')) %>% 
  rename('Response' = Q92,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

PSED2b <- PSED2b %>% # ADD TITLE TO TABLE
  rbind(c('Total',
          sum(PSED2b$`Number of Responses`),
          paste(sum(parse_number(PSED2b$`Percentage of Responses`)),'%')))

### FOSTERING GOOD RELATIONS
#============================================================

PSED2c <- Data %>% 
  filter(!is.na(Q93)) %>% 
  count(Q93) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q93)))) * 100,1),'%')) %>% 
  rename('Response' = Q93,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

PSED2c <- PSED2c %>% # ADD TITLE TO TABLE
  rbind(c('Total',
          sum(PSED2c$`Number of Responses`),
          paste(sum(parse_number(PSED2c$`Percentage of Responses`)),'%')))

### CHANGES TO IMPROVE REGULATIONS
#============================================================

change <- Data %>% 
  filter(!is.na(Q95)) %>% 
  count(Q95) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q95)))) * 100,1),'%')) %>% 
  rename('Response' = Q95,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

change <- change %>% # ADD TITLE TO TABLE
  rbind(c('Total',
          sum(change$`Number of Responses`),
          paste(sum(parse_number(change$`Percentage of Responses`)),'%')))

### CHANGES IMPACTING ON DEPRIVED
#============================================================

deprived <- Data %>% 
  filter(!is.na(Q98)) %>% 
  count(Q98) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q98)))) * 100,1),'%')) %>% 
  rename('Response' = Q98,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

deprived <- deprived %>% # ADD TITLE TO TABLE
  rbind(c('Total',
          sum(deprived$`Number of Responses`),
          paste(sum(parse_number(deprived$`Percentage of Responses`)),'%')))

### CHANGES IMPACTING ON DEPRIVED
#============================================================

deprived <- Data %>% 
  filter(!is.na(Q98)) %>% 
  count(Q98) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q98)))) * 100,1),'%')) %>% 
  rename('Response' = Q98,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

deprived <- deprived %>% # ADD TITLE TO TABLE
  rbind(c('Total',
          sum(deprived$`Number of Responses`),
          paste(sum(parse_number(deprived$`Percentage of Responses`)),'%')))

