Created the raw_data_extraction.csv which replicates the original cpsc12t01.csv but, is a copy so that I am not editing my original data.
Use More -> Copy command in R files tab pane followed by More -> Move to put it in the analysis folder

Imported the raw_data_extraction.csv into R workspace.
click on the file name in the files pane of R -> Import Dataset...

Click on raw_data_extraction in the Global Environment pane to view it in the top left pane of R. 
Highlight and delete everything in the viewing console except for the states and their categorized counts of each type of court, make sure to have the categories of courts as the first row.

Save this amended file as courts_by_state.csv
```write.csv(raw_data_extraction, 'courts_by_state')```
This will load into the main project home biol-4386-project-emmabradbury - so move it to the analysis folder using More-> Move

Load courts_by_state.csv into the Global Environment 
courts_by_state.csv-> Import Dataset...
*Check box next to first row as names*

Use the sum function in R to total each category of specialty courts in the table and assign them as vectors in the Global Environment for easy viewing.
```Drug <- sum(courts_by_state$Drug)```
```'Mental Health' <- sum(courts_by_state$'Mental Health')```
```Family <- sum(courts_by_state$Family)```
```'Youth Specialty' <- sum(courts_by_state$'Youth Specialty')```
```'Hybrid DWI/drug/a' <- sum(courts_by_state$'DWI/drug/a')```
```DWI <- sum(courts_by_state$DWI)```
```'Domestic Violence' <- sum(courts_by_state$'Domestic Violence')```
```Veterans <- sum(courts_by_state$Veterans)```
```'Tribal Wellness' <- sum(courts_by_state$'Tribal Wellness')```
```'Other/b' <- sum(courts_by_state$'Other/b')```

Take the names of the types of courts and turn those into a vector
```'Type of Court' <- c("Drug", "Mental Health", "Family", "Youth Specialty", "Hybrid DWI/drug/a", "DWI", "Domestic Violence", "Veterans", "Tribal Wellness", "Other/b")```

Take the totals calculated and make those a vector in the same order/position as their correlating type of court in the Type of Court vector
```'Number of Courts' <- c("1330", "337", "261", "244", "217", "183", "170", "133", "31", "146")```

Combine the vectors 
```court_totals <- cbind(`Type of Court`, `Number of Courts`)```

Save court totals as a csv file and move it under the analysis folder
```write.csv(court_totals, 'court_totals.csv')```
Click it's box-> More-> Move-> click analysis folder

Bring this csv into the global environment
Click on court_totals.csv-> Import Dataset... In the import text data box under data priview, make sure to click on the first column header 'X1' and click the option 'skip'

***Remove the extra column if you forget to skip it in import***
```court_totals$X1 <- NULL```

Set this to a dataframe called data to move onto output/actually creating the figure now that the data is set to be workable in long format in R ggplot.
```data <- as.data.frame(court_totals)```

