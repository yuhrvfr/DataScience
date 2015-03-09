Estimate Car MPG consumption Simple Shiny Application
========================================================
author: Herve Yu
date: Sun Mar 08 18:44:18 2015

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

- Automatic transmission: MPG = 9.62 3.92 * Weight + 1.22 * Quarter miles time
- Manual transmission: MPG = 12.56 3.92 * Weight + 1.22 * Quarter miles time
- The model predict an actual MPG with a variation of + or 4.9 MPG from the predicted MPG.
- Units of measure: Weight in 1000 lbs, Quarter Mile time in seconds. 

Simulation with Shiny Apps
========================================================

**Deployed at shinyapps.oi website**

- https://yuhrvfr.shinyapps.io/proj/

**Sidebar for data entry**

- Radio button for transmission selection
- Slider for Weight manipulation
- Textbox for Quarter mile second entry

Simulation with Shiny Apps
========================================================

**Main block for Result Display**

- Estimated MPG based on entered criteria
- Left Plot MPG over Weight
- Right Plot MPG over Quarter Miles per second
- ***Estimated value will appear as a triangle point on the plots***
