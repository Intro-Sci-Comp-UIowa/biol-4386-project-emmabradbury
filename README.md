# Census of Problem-Solving Courts, 2012
**Reference:**
Suzanne M. Strong, Ph.D., Ramona R. Rantala, Bureau of Justice Statistics, Tracey Kyckelhahn, Ph.D., Former BJS Statisticia. Census of Problem-Solving Courts, 2012. U.S. Department of Justice. September 15, 2016. NCJ 249803.
Introduction
In this study, the Bureau of Justice Statistics took a census and compiled data from the US, Puerto Rico, and Guam to analyze problem solving courts. Problem solving courts are defined as courts that aim to treat underlying problems of criminal behavior instead of just punishing the criminal. This idea of alternative restorative justice has been growing in recent years and has evolved to be what many in criminal justice hope is the bulk form of sentencing for crimes in the future. Restorative justice aims to heal offenders and victims, as well as avoid the socioeconomic costs of traditional incarceration when possible. It has a variety of models that can include counseling, mediation, community service, different types of therapy, and skill building exercises and classes. The steps taken to produce this figure included conducting researching and identifying problem-solving courts, using the National Drug Court Institute to verify courts status and find contacts within the courts to help provide information for the study. Surveys were used for courts to self-identify what their specialization was. These surveys asking courts to identify what type of specialty court they identify as and how are formally called a census. I will be focusing on reproducing the main model from the study. This model represents the sum of several different kinds of courts within the US, Puerto Rico, and Guam combined. The categories of courts compared are Drug, Mental Health, Family, Youth Specialty, Hybrid DWI/Drug, DWI, Domestic Violence, Veterans, Tribal Wellness, and Others which includes specialty categories not specifically listed.  This figure is meant to show the disproportionate amount of problem-solving courts for certain offenses versus others. While supporting figures show the benefits of restorative justice figures, I chose this one because it shows what areas of criminal justice restorative practices still need to be better implemented. 


**Figure to Reproduce **
![Figure 1]()  https://www.bjs.gov/content/pub/pdf/cpsc12.pdf
*Sorry the image is right on that first page but I could not figure out how to insert just an image file*
	
This figure takes the total number of problem-solving courts found in the 2012 census study using a self-identifying survey and categorizes them into their specialties or the areas that they emphasize. The x-axis along the bottom shows the number of courts while the y-axis on the left side indicates the type(area of specialty) of problem-solving court. The a next to the category Hybrid DWI (driving while intoxicated)/drug means that the court handles alcohol or drug dependent offenders who were also charged with a driving offense/violation. The b next to the category Other includes courts that were defined as problem-solving courts and counted in the census but their specialization category was not one of the main ones studied by the Bureau of Justice Statistics. 

**Methods**

I used pull/push and commit to GitHub to save all data and work in the remote repository:
https://github.com/Intro-Sci-Comp-UIowa/biol-4386-project-emmabradbury/tree/master/output

Because my data is very statistical, and my future plans may lead to more exploration of the data I will worked in RStudio. RStudio Version 1.1.383 was used for this project. There is a step by step scripted guide under README.md for data, analysis, output, under their respective folders. A final script to easily recreate and work from the bar plot shown below is under the script folder in Script_for_Figure_1_Reproduction.Rmd. 

Data was obtained from https://www.bjs.gov/index.cfm?ty=pbdetail&iid=5744 on February 14, 2020 through prior research. Added data file by downloading Comma-delimited format(CSV) (Zip format 37K) file from BJS website https://www.bjs.gov/index.cfm?ty=pbdetail&iid=5744 to my computer. 
The folder data contains the originally download bjs.zip and that file unzipped as bjs.csv. bjs.csv contains all of the files from the Bureau of Justice Statistics report. The readme file in the bjs.csv described which csv’s would contain the data used for Figure 1. It listed 2 csv’s that contained relevant data for me, ‘cpsc12f01.csv’, and ‘cpsc12t01.csv’. 

The file cpsc12f01.csv contains a table with the totals that are represented in Figure 1 for each type of court. The file cpsc12t01.csv contains the raw counts of each type of specialty court, separated by state in a table. This data consists of quantitative numbers(Number of Courts) attributable to a category(Type of Court). This data was obtained and entered from the census but, this source does not describe how it was summed or input into the table. I moved the 2 files relevant to Figure 1 into the folder ‘figure_1_data’ so that they are easily found and observed because the other csv’s are not relevant to my project unless I get to the point of expanding it. figure_1_data contains the separated files from bjs.csv that are relevant to the reproduction of Figure 1.

This data was then analyzed to summarize the results from states’ types of court data reports and plot them as a bar graph. I reset the ~biol-4386-project-emmabradbury as my working directory and started working under analysis folder to make initial data workable in RStudio, the original data was not written in a convenient way to work with it in R. So, I created the raw_data_extraction.csv which replicates the original cpsc12t01.csv but, is a copy so that I am not editing my original data. I then imported that data into R workspace and corrected the formatting so that labels were not just in columns but the headings of columns, eliminated white space, and then amended the data to only include the states and their counts of each type of court which I wrote into a csv and saved into another new file under analysis called courts_by_state.csv. Last, I used the sum function in R to make my own total for each category of specialty courts in the table, turned these sums into a vector with the names and a vector with the totals in corresponding position and then combined these vectors into into a csv called court_totals.csv. This csv was read as a data.frame under the ggplot function and set as ‘data’ variable to use as the base ggplot. 

Finally, the output was created using ggplot under the library(tidyverse) in RStudio. I added to data to set the geometrics of the plot to a bar, colored it red, and customized the main and subtitle. The output folder of this project is focused on how to create the actual Figure and shows what you should end up with. The bar_plot folder contains the png version of Figure 1, titled figure_1.png. 

**Results and Discussion**

The figure produced can be viewed in the output folder in bar_plot folder under figure_1.png. The main take away from this figure is that there is a disproportionate amount of Drug Problem-solving courts in the study than the other specialty courts. The x-axis displays a scale to show the approximate number of each type of courts according to where the bar lines up and the y-axis displays the different types of courts being represented by each bar. 
The large differences between my Figure 1 and the original Figure 1 from the study are as follows:
•	The labels on the actual bars denoting the total number of that type of court in the study are missing.
•	The court names are out of order but that does not take away from the general meaning of the plot and you can still see the difference in the what types of courts exist and which ones may need more representation/could be expanded. 
•	The scale at the bottom does not show as many increments of tick measures. 
•	The y-axis label is not above the plot and horizontal.
•	There is no explanation below the chart as to the meaning of Other/b and Hybrid DWI/drugs/a
The reason for these differences is purely from lack of time and spending so long on my initial attempt. I tried a few commands for changing the axis label and tick marks but could not get them to work. Regardless, this figure from ggplot is much better than the figure produced in R graph basic functions. The original data was in such an unworkable format in R and took a long time to adjust to start the figure. 

**Conclusion**

•	Using more advanced packages in library’s is more convenient in the long run.
•	Commit to github and push/pull to the main repository every 15 minutes(or after every major step) so as not to lose data from the internet or database crashing.
•	Downloaded fastx environment is much more convenient and runs without as many glitches. 
•	The Bureau of Justice Statistics is not as open or reliable as I originally believed. It is also not robust or reproducible.
•	Justice System data in the US is not very consistent or accessible in general.
•	I will be purchasing a second screen to do data analysis work with.
•	It is a lot of work up front to make data robust and reproducible but it pays off for future use.
•	Writing in an R Markdown in the source instead of the command line in the console file even just to copy and paste commands as I work would make it easier to come back to the project and show others. 


