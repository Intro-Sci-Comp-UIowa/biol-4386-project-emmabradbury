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

Use R files tab pane option More->Move... to move bjs.zip to data into the data folder