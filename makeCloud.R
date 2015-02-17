#'
#'makeCloud takes a path to a directory with a text file in it and converts it into a Corpus that it
#'then uses to calculate the wordcloud with at most y words.

makeCloud <- function(x, y = 100) {
    txt <- Corpus(DirSource(x))     #Create the Corpus from the directory 'x'.
    txt <- tm_map(txt, stripWhitespace)     #Don't include " " in the count.
    txt <- tm_map(txt, content_transformer(tolower))    #Count one and One as the same word.
    txt <- tm_map(txt, removeWords, stopwords("english"))   #Remove unhelpful words like "the, is, etc."
    txt <- tm_map(txt, PlainTextDocument)   #The wordcloud will lose its mind without converting the Corpus to plain text
    wordcloud(txt, scale = c(4,.5), max.words = y, random.order = F, rot.per=.35, color = brewer.pal(8, "Paired"))
}