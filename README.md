<a name="readme-top"></a>

# U.S. Cancer Rates Compared to Behavioral Health Factors


## Team Members
- [Ying Ko](https://github.com/yingko123)
- [Lindsey Maag](https://github.com/Lindsey-Maag)
- [Caitlin Bighem](https://github.com/caitlinbighem)
- [Mangesh Bore](https://github.com/bmangesh115)
<br><br>


<!-- TABLE OF CONTENTS -->
<h2>Table of Contents</h2>
  <ul>
    <li><a href="#link section">Link Section</a></li>
    <li><a href="#objective">Objective</a></li>    
    <li><a href="#overview">Overview</a></li>
    <li><a href="#resources">Resources</a>
       <ul>
        <li><a href="#1-united-states-cancer-statistics-uscs">1. United States Cancer Statistics (USCS)</a></li>
        <li><a href="#2-united-states-smoking-percentages">2. United States Smoking Percentages</a></li>
        <li><a href="#3-united-states-per-capita-income">3. United States Per Capita Income</a></li>
        <li><a href="#4-united-states-obesity-percentages">4. United States Obesity Percentages</a></li>
      </ul>
    </li> 
    <li><a href="#data-exploration">Data Exploration</a></li>
    <li><a href="#analysis">Analysis</a></li>
      <ul>
        <li><a href="#machine-learning-models">Machine Learning Models</a></li>
          <ul>
            <li><a href="#linear-regression-models">Linear Regression Models</a></li>
            <li><a href="#mulitple-regression-models">Multiple Regression Models</a></li>
          </ul>
       </ul>
    <li><a href="#results">Results</a></li>
    <li><a href="#recommendations">Recommendations</a></li>
  </ul>
<br><br>


## Link Section 

[Dashboard Website](https://bc-group-project-health.herokuapp.com/)
<br><br>
[Google Slide Presentation](https://docs.google.com/presentation/d/1qDphhR6iy6LWQZMR-FTrf8-2vGju6G8aBF8bE3vS4zU/edit#slide=id.p)
<br><br>
[Tableau Link](https://public.tableau.com/app/profile/caitlin.bighem/viz/GroupHealthProject_Master/Dashboard2?publish=yes)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Objective

Identify if there are geographic, demographic, or economic factors that contribute to cancer diagnosis rates or deaths.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Overview
With our objective in mind, our group set out to compare cancer diagnosis and death rates against factors like income, location, and health risk factors such as smoking and obesity. 

We started by exploring out data to see what if any trends existed within out dataset. After determining that lung cancer was prevalent no matter race, sex, or geographic region we created a linear regression machine learning model to predict if lung cancer deaths would increase with increased smoking rates. We then explored other factors like income and obesity to see if other relationships could be found using a multiple regression machine learning model.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Resources
### 1. [United States Cancer Statistics (USCS)](https://docs.google.com/presentation/d/1qDphhR6iy6LWQZMR-FTrf8-2vGju6G8aBF8bE3vS4zU/edit#slide=id.g1679ac1ab82_0_1689)
 
- Data Source: [Center for Disease Control](https://www.cdc.gov/)
- The preeminent source of data on cancer incidence is medical records. Medical professionals and staff at health care facilities pull data from patients' medical records. If the facility has its own cancer registry, they will enter the data there and send it to the national or state registry.
- The cancer mortality statistics have been gathered based on information from death certificates.
- Years included: 1999 through 2019
 

### 2. [United States Smoking Percentages](https://www.statista.com/statistics/261595/us-states-with-highest-smoking-rates-among-adults/)

- Data Source: [Center for Disease Control](https://www.cdc.gov/)
- Adults who reported that they currently smoked every day or some days through the Behavioral Risk Factor Surveillance System (BRFSS) 
- Percentages are weighted to reflect population characteristics.
- Years included: 2011 through 2019

### 3. [United States Per Capita Income](https://apps.bea.gov/iTable/iTable.cfm?reqid=70&step=1&acrdn=2)

- Data Source: [Bureau of Economic Affairs](https://www.bea.gov/)
- Per capita personal income is total personal income divided by the total mid-year population.
- Note: All dollar estimates are in millions of current dollars (not adjusted for inflation).
- Years included: 2010 through 2020
 
### 4. [United States Obesity Percentages](https://nccd.cdc.gov/dnpao_dtm/rdPage.aspx?rdReport=DNPAO_DTM.ExploreByTopic&islClass=OWS&islTopic=&go=GO)

- Data Source: [Center for Disease Control](https://www.cdc.gov/)
- Adults who reported that they were currently obese through the Behavioral Risk Factor Surveillance System (BRFSS).
- Percentages are weighted to reflect population characteristics.
- Years included: 2010 through 2019
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Data Exploration

#### Are there unusually high or low rates of mortality rate by Race? 
  - Black individuals have a higher mortality rate than white individuals in comparison with incidence rate
  - Other races included in the data set have lower incidence and mortality rate than individuals whose race is Black or White
![All Cancer Mortality vs Race](https://github.com/Lindsey-Maag/Group_Project_Health/blob/CB_1/Resources/Images/All_Cancer_Mortality_vs_Race.PNG)

#### What are the top mortality trends for males and females?
| Males | Females |
| :---:   | :---: |
| Lung | Lung|
| Prostate | Breast |
| Colon & Rectum | Colon & Rectum |


#### Are there unusually high or low rates of cancer type incidence rate by State?
| Highest Incidence Rate | Lowest Incidence Rate |
| :---:   | :---: |
| West Virginia - 26.26% | Utah - 9.57% |
| Kentucky - 25.79% | California - 11.88% |
| Arkansas - 24.03% | Hawaii - 13.83% |
 

#### What are the top states with the highest death rate of smokers with lung cancer?  
| Highest Smoker Mortality |
| :---:   |
| Kentucky: 62.54% |
| Arkansas: 54.70% |
| Mississippi: 54.46%|

![Average Age Adjusted Rate Lung_Smoking_LR Map](https://github.com/Lindsey-Maag/Group_Project_Health/blob/main/Resources/Images/smoker_deaths.PNG)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## Analysis
### Machine Learning Models
#### Linear Regression Models
##### Income
- Is there a relationship between cancer incidence and mortality rate to income?
  - Our linear regression analysis shows little correlation between state, all cancer mortality rate, and state per capita income between 1999 and 2019 with R@ of only 5%
  - Our dataset spans over 21 years and during this period, per capita income steadily increases due to inflation and economic expansion while cancer mortality rate decreased, most likely as a result of better screening and health care technology, all of these factors have contributed to the lower correlation between income and cancer mortality.

![Supervised Machine Learning Linear Regression R2 Model](https://github.com/Lindsey-Maag/Group_Project_Health/blob/CB_1/Resources/Images/Supervised_ML_Linear_Regression_R2_5_Percent.png)

##### Lung Cancer Rates Compared to Smoking Percentages
- Is there a relationship between lung cancer incidence and mortality rate to smoking percentages?
  - We investigated various cancer rate measurements as the target for our ML models.  We found that the age-adjusted mortality rate gave us the best results in our [linear regression](https://github.com/Lindsey-Maag/Group_Project_Health/blob/main/LinearRegression.ipynb) ML models.
   - In the [LinR_LungCancer_Smoking.ipynb notebook](https://github.com/Lindsey-Maag/Group_Project_Health/blob/main/LinR_LungCancer_Smoking.ipynb), we use the reported lung cancer death rate per 100,000 population as the independent variable for our linear regression ML model against smoking rate as the dependent variable.  In this case, our model produced an R-square of 57%.
   - In the [LinR_AgeAdj_LungCancer_Smoking.ipynb notebook](LinR_AgeAdj_LungCancer_Smoking.ipynb) we were able to improve R-square to 73% when we used aged-adjusted lung cancer death rate.
    ![Supervised Machine Learning Linear Regression](https://github.com/Lindsey-Maag/Group_Project_Health/blob/CB_1/Resources/Images/Supervised_ML_Linear_Regression_73_Percent.png)
   - We split our smoking and lung cancer death relationship data using standard sklearn train_test_split method with random state of 78. We were able to achieve an R-square of 72% with the training dataset, while the testing dataset produced an R-square of 76%. We believe these results demonstrated our linear regression model does not have any overfitting issues. See [LinR_AgeAdj_LungCancer_Smoking.ipynb notebook](https://github.com/Lindsey-Maag/Group_Project_Health/blob/main/LinR_AgeAdj_LungCancer_Smoking.ipynb) for detailed code.
 - We started our model exploration with linear regression to test out the best target choice and get a better understanding of our core dataset.  We found good results with our linear regression model when we looked at the relationship between lung cancer death rates and smoking percentages.

#### Multiple Regression Models
Our Multiple Regression Models compared three different cancer-type mortality rates with income, smoking percentage, and obesity data. Data was split into training and test models the same as our linear regression models. Below is an example Seaborn Heat Map that was generated in the Lung Cancer Multiple Regression Model. The cross sections with darker colors indicate a very poor or negative relationships. Cross sections with lighter colors indicate positive relationships. Age-adjusted-rate and smoking percentage show the best relationship at 85%. The next highest relationship is smoking and obesity at 49%.

![Multiple Regression Seaborn Heat Map](https://github.com/Lindsey-Maag/Group_Project_Health/blob/main/Resources/Images/mult_regression.PNG)

##### Lung Cancer Mortality
 - In this model lung cancer mortality rate was compared against our income, smoking, and obesity data sets.
 - We achieved a training score of 75% and a testing score of 68% 
##### Colon Cancer Mortality
 - In this model colon cancer mortality rate was compared against our income, smoking, and obesity data sets. 
 - We achieved a training score of 56% and a testing score of 56%
##### Pancreatic Cancer Mortality
 - In this model pancreatic cancer mortality rate was compared against our income, smoking, and obesity data sets.
 - We achieved a training score of 56% and a testing score of 56%

<p align="right">(<a href="#readme-top">back to top</a>)</p>  

## Results
#### Linear Regression - Lung Cancer
- Linear regression for lung cancer is 76% testing and 72% training
- At 0.0% smoking rate, the lung cancer death rate would be 6.7 (intercept).
- For every 0.2% of smoking percentage rate increase, there will be an increase of 1 on deathrate.

#### Multiple Regression
 - Multiple regression for lung cancer is 68% testing and 75% training. The higher training score compared to lower testing score is indicative or over-fitting.
 - Testing and training scores for the multiple regression models for Colon and Pancreatic cancers were all around 56%. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Recommendations

Based on our analysis, we recommend the use of the current data to review the following questions:
- Further analysis can be done by including obesity rates and confirming how they may or may not contribute to morality and incidence rates of specific cancers.
- One way to investigate the relationship between income and death rate further is to look at data within a smaller time frame like one year at a time. 

Ideally to achieve more specific results additional data is needed:
- Incorporate additional location data to further narrow the focus of the location-based analysis.
- Patient-level data would show individual incomes, smoking habits, and weight which would we could then again narrow the focus of our analysis.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
