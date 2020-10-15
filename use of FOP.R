### USE OF FOP BY BUISNESSES
##############################################

# FOP
#============================================================

use_FOP <- Data %>% # FOP USE TABLE
  filter(!is.na(Q33)) %>% 
  count(Q33) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q33)))) * 100,0),'%')) %>% 
  rename('Respons' = Q33,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

use_FOP <- use_FOP %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(use_FOP$`Number of Responses`),
          paste(sum(parse_number(use_FOP$`Percentage of Responses`)),'%')))

use_FOP_gg <- Data %>% # FOP USE GRAPH
  filter(!is.na(Q33)) %>% 
  count(Q33) %>% 
  mutate(percent = round((n/nrow(Data %>% 
                                   filter(!is.na(Q33)))) * 100,0)) %>% 
  ggplot(aes(Q33,n,text = paste('Respons:', Q33, 
                               '\n','Number of Responders:',n,
                               '\n', 'Percentage of Responders:',percent,'%'))) +
  geom_bar(stat = 'identity',fill = 'blue')+
  theme_bw() +
  coord_flip() +
  labs(y = 'Number of Reponses',
       x = 'Respons', 
       title = 'Do you feature a Front of Pack Nutrition Label on your products?')

# MTL use
#============================================================

use_MTL <- Data %>% # MTL USE TABLE
  filter(!is.na(Q35)) %>% 
  count(Q35) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q35)))) * 100,0),'%')) %>% 
  rename('Respons' = Q35,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

use_MTL <- use_MTL %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(use_MTL$`Number of Responses`),
          paste(sum(parse_number(use_MTL$`Percentage of Responses`)),'%')))

# MTL REFORM
#============================================================

MTL_reform <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q47)) %>% 
  count(Q47) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q47)))) * 100,0),'%')) %>% 
  rename('Respons' = Q47,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

MTL_reform <- MTL_reform %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(MTL_reform$`Number of Responses`),
          paste(sum(parse_number(MTL_reform$`Percentage of Responses`)),'%')))

# FOP SUPPORT
#============================================================

FOP_support <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q49)) %>% 
  count(Q49) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q49)))) * 100,0),'%')) %>% 
  rename('Respons' = Q49,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

FOP_support <- FOP_support %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(FOP_support$`Number of Responses`),
          paste(sum(parse_number(FOP_support$`Percentage of Responses`)),'%')))

## USE OF FOP BY INDERVIDUALS AND ORG
#########################################

# MTL USE
#============================================================

MTL_use_p <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q51)) %>% 
  count(Q51) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q51)))) * 100,0),'%')) %>% 
  rename('Respons' = Q51,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

MTL_use_p <- MTL_use_p %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(MTL_use_p$`Number of Responses`),
          paste(sum(parse_number(MTL_use_p$`Percentage of Responses`)),'%')))

# MTL CLEAR
#============================================================

MTL_clear <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q53)) %>% 
  count(Q53) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q53)))) * 100,0),'%')) %>% 
  rename('Respons' = Q53,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

MTL_clear <- MTL_clear %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(MTL_clear$`Number of Responses`),
          paste(sum(parse_number(MTL_clear$`Percentage of Responses`)),'%')))

# MTL INFORMATIVE
#============================================================

MTL_informative <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q54)) %>% 
  count(Q54) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q54)))) * 100,0),'%')) %>% 
  rename('Respons' = Q54,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

MTL_informative <- MTL_informative %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(MTL_informative$`Number of Responses`),
          paste(sum(parse_number(MTL_informative$`Percentage of Responses`)),'%')))

# INDERVIDUAL NUTRIANTS
#============================================================

nutriants <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q55)) %>% 
  count(Q55) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q55)))) * 100,0),'%')) %>% 
  rename('Respons' = Q55,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

nutriants <- nutriants %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(nutriants$`Number of Responses`),
          paste(sum(parse_number(nutriants$`Percentage of Responses`)),'%')))

# COLOR
#============================================================

color <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q56)) %>% 
  count(Q56) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q56)))) * 100,0),'%')) %>% 
  rename('Respons' = Q56,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

color <- color %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(color$`Number of Responses`),
          paste(sum(parse_number(color$`Percentage of Responses`)),'%')))


# REFERENCE INTAKE
#============================================================

ref <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q57)) %>% 
  count(Q57) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q57)))) * 100,0),'%')) %>% 
  rename('Respons' = Q57,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

ref <- ref %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(ref$`Number of Responses`),
          paste(sum(parse_number(ref$`Percentage of Responses`)),'%')))

# PORTION SIZE
#============================================================

p_size <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q57)) %>% 
  count(Q57) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q57)))) * 100,0),'%')) %>% 
  rename('Respons' = Q57,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

p_size <- p_size %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(p_size$`Number of Responses`),
          paste(sum(parse_number(p_size$`Percentage of Responses`)),'%')))

# SAME FOP
#============================================================

same <- Data %>% # FOP SUPPORT TABLE
  filter(!is.na(Q60)) %>% 
  count(Q60) %>% 
  arrange(-n) %>% 
  mutate(percent = paste(round((n/nrow(Data %>% 
                                         filter(!is.na(Q60)))) * 100,0),'%')) %>% 
  rename('Respons' = Q60,
         'Number of Responses' = n,
         'Percentage of Responses' = percent)

same <- same %>% # ADD TOTAL TO TABLE
  rbind(c('Total',
          sum(same$`Number of Responses`),
          paste(sum(parse_number(same$`Percentage of Responses`)),'%')))