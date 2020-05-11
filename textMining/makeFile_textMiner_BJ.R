# Text mining for dummies (i.e. me) ----
# help:
# https://www.tidytextmining.com/

# data:
# https://www.gov.uk/government/speeches/pm-address-to-the-nation-on-coronavirus-10-may-2020


# Libraries ----
library(here)
library(tidyverse)
library(tidytext)
library(reshape2)
library(wordcloud)

# Parameters ----
myParams <- list()

theFile <- paste0(here::here(), "/data/2020_05_1_BJ_speech.txt")

# Load data ----
df <- readr::read_delim(theFile, "\n", col_names = c("line"))
# has 1 sentence per row

data(stop_words) # English language stop words (and/in/of etc)

# Tidy the data ----
# Deep in tidyverse territory here

# set line number
df2 <- df %>%
  mutate(linenumber = row_number()) %>%
  ungroup()

# get each word on to each row
tidy_df <- unnest_tokens(df2, output = "word", input = "line")

# check
wordCount <- tidy_df %>%
  count(word, sort = TRUE) 

# remove the stop words - they are usually the most frequent
# and usually the least interesting
reduced_df <- tidy_df %>%
  anti_join(stop_words)

# count the reduced words
reducedWordCount <- reduced_df %>%
  count(word, sort = TRUE) 

bing_word_counts <- reduced_df %>%
  inner_join(get_sentiments("bing")) %>%
  count(word, sentiment, sort = TRUE) %>%
  ungroup()

# bing_word_countsPlot ----
bing_word_countsPlot <- bing_word_counts %>%
  group_by(sentiment) %>%
  top_n(8) %>%
  ungroup() %>%
  mutate(word = reorder(word, n)) %>%
  ggplot2::ggplot(aes(word, n, fill = sentiment)) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~sentiment, scales = "free_y") +
  labs(y = "Contribution to sentiment",
       x = NULL) +
  coord_flip()


bing_sentiment_counts_by_line <- reduced_df %>%
  inner_join(get_sentiments("bing")) %>%
  count(linenumber, sentiment, sort = TRUE) %>%
  ungroup()

# sentimentByLinePLot ----
sentimentByLinePLot <- ggplot2::ggplot(bing_sentiment_counts_by_line, aes(x = linenumber,
                                                   y = n,
                                                   colour = sentiment,
                                                   size = n)) +
  geom_point() +
  theme(legend.position = "bottom") +
  labs(x = "Line/sentence number",
       y = "Number of words")


# run the report

# Functions ----
doReport <- function(rmd, vers){
  rmdFile <- paste0(here::here(), "/textMining/", rmd, ".Rmd")
  rmarkdown::render(input = rmdFile,
                    params = list(title = myParams$title,
                                  subtitle = myParams$subtitle,
                                  authors = myParams$authors),
                    output_file = paste0(here::here(),"/textMining/", # for easy github pages management
                                         myParams$rmd, vers, ".html")
  )
}



# > settings ----

#> yaml ----
# title & subtitle can't have ' in (unless escaped)
myParams$title <- "Text Mining"
myParams$subtitle <- "Applying tidytext text mining methods to Boris Johnsons 10th May 2020 address"
myParams$authors <- "Ben Anderson (b.anderson@soton.ac.uk `@dataknut`)"

# myParams$rmd <- "sccAirQualDataExtract" 
# myParams$subtitle <- "Extracting data for modelling"

myParams$rmd <- "textMiner_BJ"
myParams$version <- "_v1"
# over-write version param for particlar versions

# > run report ----
#
doReport(myParams$rmd, myParams$version) # un/comment to (not) run automatically
