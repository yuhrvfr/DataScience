library(shiny)
shinyUI(

    pageWithSidebar(

        headerPanel("Predict MPG consumption for Vehicle"),
		
        sidebarPanel(
            h3("Enter the criteria for MPG estimation:"),
	    h3(""),
            radioButtons("am", "Select the transmission type:",
              c("Manual" = "1",
                "Automatic" = "0")),
	    sliderInput("wt","Select the Vehicle Weight in 1000 lbs",value=3,min=.5,max=5.2,step=.1,),
            numericInput('qsec','Enter the Quarter mile per second',15.5,min=14.2,max=22.8,step=.1),
            helpText("Note: Please select the transmission type,", 
                     "the weight of the Car and the quarter miles per second")
			),
         
         mainPanel(
		    h3('Your estimated MPG is'),
		    verbatimTextOutput("empg"),
		    plotOutput("mpgwt"),
		    helpText("Note: The Estimated MPG is represented ", 
                     "by the blue triangles on the plots")
		   )
	)
)
