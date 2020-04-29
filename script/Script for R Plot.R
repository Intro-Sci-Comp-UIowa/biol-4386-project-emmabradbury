barplot(court_totals_matrix, horiz = TRUE, 
        ylab = "Type of Court", xlab = "Number of courts", 
        col = "dark red", 
        main = "Figure 1", 
        sub = "Problem-solving courts, 2012", 
        names.arg = c("Domestic Violence", "Drug", "DWI", 
                      "DWi/drug/a", "Family", "Mental Health", "Other/b", 
                      "Tribal Wellness", "Veterans", 
                      "Youth Specialty"), 
        las=1,
        cex.axis=1.5,
        cex.lab=1.5,
        width=c(20, 15, 15, 15, 15, 15, 15, 15, 15, 15),
        space=c(2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
        
      )
                                           
                                      

