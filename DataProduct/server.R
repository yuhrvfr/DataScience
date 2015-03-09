library(shiny)
mpg <- mtcars$mpg
wt  <- mtcars$wt
qsec<- mtcars$qsec
fit <- lm(mpg~factor(am)+wt+hp+cyl+disp+drat+qsec+carb+vs,data=mtcars)
sfit <- step(fit,trace=0)

drawPlots <- function(x) {
		   par(mfrow=c(1,2))
     	   plot(mpg~wt,pch=19, xlab="Car weight (1000lbs)", col="darkgrey",
                main="MPG over Car Weight")
           lmwt <- lm(mpg~wt)
           abline(lmwt,col="darkgrey",lwd=2)
           points(x[1], jitter(x[3]), col="darkblue", pch=17, cex=2)

           plot(mpg~qsec,pch=19, xlab="Quarter Mile Second", col="darkgrey",
                main="MPG over Quarter Miles Second")
                lmqsec <- lm(mpg~qsec)
                abline(lmqsec,col="darkgrey",lwd=2)
	       points(x[2], jitter(x[3]), col="darkblue", pch=17, cex=2)
}

shinyServer(

    function(input, output) {
		output$mpgwt <- renderPlot({
		     e <- data.frame(am=input$am,wt=input$wt,qsec=input$qsec)
             p <- predict(sfit,e)
		     output$empg <- renderPrint({as.character(p)})
		     x <- c(input$wt,input$qsec,p)
		     drawPlots(x)
        })
	}
)