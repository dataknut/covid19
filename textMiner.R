# text mining for dummies (i.e. me)

library(here)
library(tidyverse)
library(pdftools)

# help"
# https://www.r-bloggers.com/how-to-extract-data-from-a-pdf-file-with-r/
# https://www.tidytextmining.com/

# we have 1 of the NZ press briefings to play withß
thePDF <- paste0(here::here(), "/data/NZ_0505 PM and DG Press Conference.pdf")

text <- pdftools::pdf_text(thePDF) %>% 
  strsplit(split = "\n")

df <- data.frame("text" = text, stringsAsFactors = FALSE)

colnames(df) <- c("text")


