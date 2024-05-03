#Text mining and word cloud 

#link - http://www.sthda.com/english/wiki/text-mining-and-word-cloud-fundamentals-in-r-5-simple-steps-you-should-know#google_vignette

# Install
install.packages("tm")  # for text mining
install.packages("SnowballC") # for text stemming
install.packages("wordcloud") # word-cloud generator 
install.packages("RColorBrewer") # color palettes

# Text Stemming is a text preprocessing technique
#it is the process of reducing inflected form of a word to one “stem,” 
#or root form

# Load
library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")

#create a file with any text and save it as "cloud.txt"

#import file locally
text <- readLines(file.choose())
text

#OR
# Read the text file from internet
filePath <- "http://www.sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
text <- readLines(filePath)
text

# Load the data as a corpus
docs <- Corpus(VectorSource(text))

#Corpus is a collection of text document over 
#which we would apply text mining tasks
# it is taking every string as a new document 

#Inspect the content of the document
inspect(docs)

# Convert the text to lower case
docs <- tm_map(docs, content_transformer(tolower))
inspect(docs[1:5])

# Remove numbers
docs <- tm_map(docs, removeNumbers)
inspect(docs[1:5])


# Remove english common english stopwords
# Stop words are a set of commonly used words in a language. 
#Examples of stop words in English are “a,” “the,” “is,” “are,” etc.
docs <- tm_map(docs, removeWords, stopwords("english"))
inspect(docs[1:5])

#Punctuation is the symbols that you use to divide
#written words into sentences and clauses.
# Remove punctuations
docs <- tm_map(docs, removePunctuation)
inspect(docs[1:5])

# Eliminate extra white spaces
docs <- tm_map(docs, stripWhitespace)
inspect(docs[1:5])

# Text stemming
docs <- tm_map(docs, stemDocument)


#Build a term-document matrix
#Document matrix is a table containing the frequency of the words. 
#Column names are words and row names are documents. 
#The function TermDocumentMatrix() from text mining package

dtm <- TermDocumentMatrix(docs)
dtm
m <- as.matrix(dtm)
m
v <- sort(rowSums(m))
v
d <- data.frame(word = names(v),freq=v)
head(d, 10)

#word cloud 


wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))

#rot - rotation, as per 35% with respect to 90 degrees

