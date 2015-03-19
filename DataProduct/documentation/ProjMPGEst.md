Estimate Car MPG consumption Simple Shiny Application
========================================================
author: Herve Yu
date: Wed Mar 18 22:03:20 2015

Summary of the goal
========================================================

Predict MPG consumption of a car based on

- Transmission Type
- Weight
- Quarter Miles per second

The prediction trained on mtcars dataset extracted from the 1974 Motor Trend US magazineperformance for 32 automobiles (197374 models), using linear regression.

Regression Analysis
========================================================


**The general formula:**

```

Call:
lm(formula = mpg ~ factor(am) + wt + qsec, data = mtcars)

Coefficients:
(Intercept)  factor(am)1           wt         qsec  
      9.618        2.936       -3.917        1.226  
```
- Automatic transmission: MPG = 9.62 - 3.92 * Weight + 1.22 * Quarter miles time
- Manual transmission: MPG = 12.56 - 3.92 * Weight + 1.22 * Quarter miles time

Simulation with Shiny Apps
========================================================

**Deployed at shinyapps.oi website**

- https://yuhrvfr.shinyapps.io/proj/

**Sidebar for data entry**

- Radio button for transmission selection
- Slider for Weight manipulation
- Textbox for Quarter mile second entry
- Units of measure: Weight in 1000 lbs, Quarter Mile time in seconds. 
- The model predict an actual MPG with a variation of + or 4.9 MPG from the predicted MPG.


Simulation with Shiny Apps
========================================================

**Main block for Result Display**

- Estimated MPG based on entered criteria
- Left Plot MPG over Weight
- Right Plot MPG over Quarter Miles per second
- ***Estimated value will appear as a triangle point on the plots***
