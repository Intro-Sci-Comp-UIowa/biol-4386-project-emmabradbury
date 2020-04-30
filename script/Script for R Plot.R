barplot(court_data_matrix, horiz = TRUE, 
        ylab = "Type of Court",
        xlab = "Number of courts", 
        col = "dark red", 
        main = "Figure 1: Problem-solving courts, 2012", 
        sub = NULL, 
        names.arg = c("Domestic Violence", "Drug", "DWI", 
                      "DWi/drug/a", "Family", 
                      "Mental Health", "Other/b", 
                      "Tribal Wellness", "Veterans", 
                      "Youth Specialty"), 
        las=1,
        cex.axis=1,
        cex.lab=1,
        width=c(15,15,15,15,15,15,15,15,15,15),
        
        )
                                      

