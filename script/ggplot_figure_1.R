1. Read in the court_totals.csv as a dataframe  
```data <- as.data.frame(read.csv("analysis/courts_totals.csv"))```
2. Set up the mapping 
```x <- ggplot(data = data, aes(x = Type.of.Court, y = Number.of.Courts))```
3. Turn the plot aesthetic to it's own layer to build on
```x <- ggplot(data = data, aes(x = Type.of.Court, y = Number.of.Courts))```
4. Input the shape and data values
```x + geom_bar(stat = "identity")```
5. Flip the x and y axis to a horizontal barplot
```x + geom_bar(stat = "identity") + coord_flip()```
6. 

       
