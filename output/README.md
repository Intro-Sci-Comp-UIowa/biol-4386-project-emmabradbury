# Overview

This output folder of this project is focused on how to create the actual Figure and shows what you should end up with. 
The bar_plot folder contains the iage version of Figure 1, titled figure_1.png.
You can either skip the first step of this script if you are starting from the analysis section.
If your goal is to just create the image and work on it from the data in github(download and possibly change numbers or the types of court totals in the table, possible even the color, labels, etc.)-> refer to the 'script' folder which contains an R Markdown file that details how to do so.

Load tidyverse package to use ggplot2
```library(tidyverse)```

## Steps for creating plot

1. Load court_totals.csv as a dataframe
```data <- as.data.frame(read.csv("analysis/court_totals.csv"))```

2. Make first layer of exterior graph
```ggplot(data, aes(x = Type.of.Court, y = Number.of.Courts))```

3. Assign first layer of figure to variable
```x <- ggplot(data, aes(x = Type.of.Court, y = Number.of.Courts))```

4. Map the values and type of plot
```x + geom_bar(stat = "identity")```

5. Turn the bar plot horizontal
```x + geom_bar(stat = "identity") + coord_flip()```

6. Add red color to bars and the title of the graph
```x + geom_bar(stat = "identity", color = " dark red", fill = "dark red") + coord_flip() + ggtitle("Figure 1", subtitle = "Problem-solving courts, 2012")```

7. Assign progress on bar plot as basefigure to simplify future edits
```basefigure <- x + geom_bar(stat = "identity", color = " dark red", fill = "dark red") + coord_flip() + ggtitle("Figure 1", subtitle = "Problem-solving courts, 2012") + ylab("Number of courts") + xlab("Type of court")```

