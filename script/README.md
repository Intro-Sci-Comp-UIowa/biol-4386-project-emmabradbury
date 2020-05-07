1. Load court_totals.csv as a dataframe
```data <- as.data.frame(read.csv("analysis/court_totals.csv"))```
2. Make base graph
ggplot(data, aes(x = Type.of.Court, y = Number.of.Courts))
```x <- ggplot(data, aes(x = Type.of.Court, y = Number.of.Courts))```
```x + geom_bar(stat = "identity")```
```x + geom_bar(stat = "identity") + coord_flip()```