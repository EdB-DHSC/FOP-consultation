### DIATERY ADVICE
##############################################

### FREE SUGAR
#=========================================================================

free_sugar <- Data %>% # FOP USE TABLE
  filter(!is.na(Q84)) %>% 
  count(Q84) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q84)))) * 100,0),'%')) %>% 
  rename('Respons' = Q84,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

free_sugar <- free_sugar %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(free_sugar$`Number of Responses`),
          paste(sum(parse_number(free_sugar$`Percentage of Responses`)),'%')))

### FIBER
#=========================================================================

fiber <- Data %>% # FOP USE TABLE
  filter(!is.na(Q86)) %>% 
  count(Q86) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q86)))) * 100,0),'%')) %>% 
  rename('Respons' = Q86,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

fiber <- fiber %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(fiber$`Number of Responses`),
          paste(sum(parse_number(fiber$`Percentage of Responses`)),'%')))