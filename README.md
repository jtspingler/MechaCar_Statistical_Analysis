# MechaCar_Statistical_Analysis

In this challenge we created a statistical analysis of car performance with Rstudio

## Overview
- Identify variables that predict MPG;
- Calculate summary stats on suspension coils;
- Compare our mfg lots to the population;
- Compare MechaCar performance against vehicles from other manufacturers.

## Results

### Linear Regression to Predict MPG
![Linear Regression for MPG](https://github.com/jtspingler/MechaCar_Statistical_Analysis/blob/main/Images/Linear%20Regression%20for%20mpg.JPG)
- P value for vehicle length against MPG is 2.60e-12
- P value for ground clearance against MPG is 5.21e-08
- These two P values tell us that they have a non random effect on the MPG of the MechaCar. Since the intercept of our linear equation is 5.08e-08, and statistically significant, we know that there are other variables outside of this analysis that affect the MPG.
- 5.35e-11 is the P value of our slope, which means that we have to reject the null hypothesis, meaning that the relationship between mpg and our variables are not attributed to random chance.
- Our R-squared value of 0.7149 tells us that 71% of the variance in MPG can be explained by the variables in our analysis.

### Summary Statistics on Suspension Coils
![Suspension Coil Total Summary](https://github.com/jtspingler/MechaCar_Statistical_Analysis/blob/main/Images/Summary%20stats%20on%20Suspension%20Coils.JPG)
![Suspension Coil Lot Summary](https://github.com/jtspingler/MechaCar_Statistical_Analysis/blob/main/Images/lot%20summary.JPG)
* If looking at just the total summary we would not see any cause for concern. However if we look at the lot summaries we can see that the variance in lot 3 of 170.2 is above our threshold.

### T-Tests on Suspension Coils
Suspension Coils Cumulative T-test
![Suspension Coils Cumulative T-test](https://github.com/jtspingler/MechaCar_Statistical_Analysis/blob/main/Images/T%20test%20on%20lots.JPG)
- P value of .06028 means that we cannot reject the null hypothesis
![Suspension Coil Lot 1 T-test](https://github.com/jtspingler/MechaCar_Statistical_Analysis/blob/main/Images/lot%201%20one%20sample%20t-test.JPG)
- P value of 1 means we cannot reject the null hypothesis
![Suspension Coil Lot 2 T-test](https://github.com/jtspingler/MechaCar_Statistical_Analysis/blob/main/Images/lot%202%20one%20sample%20t-test.JPG)
- P value of .6072 means we cannot reject the null hypothesis
![Suspension Coil Lot 3 T-test](https://github.com/jtspingler/MechaCar_Statistical_Analysis/blob/main/Images/lot%203%20one%20sample%20t-test.JPG)
- P value of 0417 means that we should reject the null hypothesis

## Study Design
I think it would be interesting to test the horsepower(HP) of the MechaCar vs the general public. In order to do this I think we should look at car weight, engine size, and mph. Our null hypothesis would say that we expect there to be no difference between mecha and the general public.
