## CODE FILE FOR HFSS CONSULTATION ANALYSIS
#############################################################
############################################################

if (!require(rmarkdown)) install.packages('rmarkdown')
library(rmarkdown)
if (!require(tidyverse)) install.packages('tidyverse')
library(tidyverse)
if (!require(readxl)) install.apackages('readxl')
library(readxl)
if (!require(knitr)) install.packages('knitr')
library(knitr)
if (!require(kableExtra)) install.packages('kableExtra')
library(kableExtra)
if (!require(tidytext)) install.packages('tidytext')
library(tidytext)
if (!require(wordcloud)) install.packages('wordcloud')
library(wordcloud)
if (!require(tm)) install.packages("tm")  # for text mining
library(tm)
if (!require(SnowballC)) install.packages("SnowballC") # for text stemming
library(SnowballC)
if (!require(RColorBrewer)) install.packages("RColorBrewer") # color palettes
library(RColorBrewer)
if (!require(topicmodels)) install.packages('topicmodels')
library(topicmodels)

# SECTION 1 - SET PARAMETERS
################################################################


# SECTION 2 - READ IN DATA
################################################################
Data <- read_excel("data/raw data/FOP online data.xlsx")

names(Data) <- paste0('Q',1:length(Data))

# email_data <- read_excel("input data/raw data/HFSS email data.xlsx")
# 
# names(email_data) <- paste0('Q',1:length(email_data))
# 
# # BIND TOGETHER EMAIL AND ONLINE AND RESOLVE MISMATCHED FIELDS
# Data <- rbind(online_data,email_data) %>% 
#   mutate(Q9 = str_replace(Q9,'yes','Yes'), # CAPATALISE EMAIL
#          Q9 = str_replace(Q9,'no','No'),
#          Q29 = str_replace(Q29,'yes','Yes'), # CAPATALISE EMAIL ADDITIONAL MEDIA
#          Q29 = str_replace(Q29,'no','No'),
#          Q31 = str_replace(Q31,'radio','Radio'),
#          Q30 = str_replace(Q30,'cinema','Cinema'),
#          Q46 = str_replace(Q46,'^agree','Agree'), # CAPATALISE EMAIL HFSS FOOD
#          Q46 = str_replace(Q46,'^disagree','Disagree'),
#          Q86 = str_replace(Q86,'yes','Yes'),
#          Q139 = str_replace(Q139,'Agree','Yes'), # TRANSFORM TIMING FIELD FROM EMAIL RESPONSES
#          Q13 = str_replace_na(Q13,replacement = 'Not Answered'), # NA TO NOT ANSWERED FOR EMAIL RESPONSE
#          Q14 = str_replace_na(Q14,replacement = 'Not Answered'),
#          Q48 = str_replace_na(Q48,replacement = 'Not Answered'),
#          Q91 = str_replace_na(Q91,replacement = 'Not Answered'))
# 
# Data <- Data %>% # EXTRACT AGE OF CHILD
#   mutate(Q10 = str_replace_all(Q10,fixed(" "), ""), 
#          num = parse_number(Q10),
#          alpha =  str_extract_all(Q10, "[aA-zZ]+"),
#          alph2 = if_else(str_detect(alpha,"[Mm]"),0.0833,1),
#          num = num * alph2,
#          Q10 = case_when(num < 3 ~ 'less than 3', # GROUP CHILD AGE
#                          num < 10 & num >3 ~ '3 - 10',
#                          num < 18 & num > 10 ~ '10 - 18',
#                          num > 18 ~ 'Adult')) %>% 
#   select(-alpha,-alph2,-num)

# SECTION 3 - ANALYSIS
##############################################################
##################################################################

source('code/moduals/characteristics.R')
  
source('code/moduals/use of FOP.R')
  
source('code/moduals/international.R')

source('code/moduals/diatery advice.R')

source('code/moduals/PSED and other.R')

#source('code/moduals/SES.R')

# SECTION 5 - WRITE MARKDOWN REPORT
############################################################################
##########################################################################

  render(
    input = "code/markdown/FOP_Consultation_analysis_html.Rmd",
    output_file = "FOP Consultation Report.html",  
    output_dir = "report"
  )


