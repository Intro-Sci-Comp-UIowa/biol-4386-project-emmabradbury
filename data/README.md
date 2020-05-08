Data was obtained from https://www.bjs.gov/index.cfm?ty=pbdetail&iid=5744 on February 14, 2020 through prior research. 
Added data file by downloading Comma-delimited format(CSV) (Zip format 37K) file from BJS website https://www.bjs.gov/index.cfm?ty=pbdetail&iid=5744 to computer 

Open RStudio 

Go to https://github.com/Intro-Sci-Comp-UIowa/biol-4386-project-emmabradbury

"Clone or Download" the repository to your R environment
File > New Project > Version Control > Git. In “Repository URL”, paste the URL of the following GihHub repository:
https://github.com/Intro-Sci-Comp-UIowa/biol-4386-project-emmabradbury.git

*Description of all materials in the repository and the original project found under README.md*

Set Working Directory to biol-4386-project-emmabradbury
```setwd("~/biol-4386-project-emmabradbury")```

Use R files tab pane to rename the downloaded file CPSC12(1).zip to bjs.zip

unzip the data 
```unzip(bjs.zip)```
Now you will have a bjs.csv folder

Using R files tab pane option(bottom right pane, first tab), click the empty boxes next to both bjs.zip and bjs.csv so that there is a check mark in them
Select at the top bar of this pane More->Move... to move bjs.zip and bjs.csv into the data folder

To separate relevant data to reproduce Figure 1 only, use the readme.cpsc12.txt file under bjs.csv to find the relevant files

The relevant files that were used for Figure 1 are cpsc12f01.csv and cpsc12t01.csv.

cpsc12f01.csv contains a table with the totals that are represented in Figure 1 for each type of court.This file will be used to compare personal results with data to ensure it has not been changed and court totals by type over all of the states is computed correctly.

cpsc12t01.csv contains the raw counts of each type  of specialty court, separated by state in a table. This file will be duplicated and used in analysis to total the number of each type of court, make the data friendly for R manipulation, and reproduce Figure 1 in ggplot.

*This information was obtained and entered from the census but, this source does not describe how it was previously summes or input into a table.*

After identification of relevant files, move them into their own folder names figure_1_data by checking the boxes next to them in the files pane of R and using More -> Move...

