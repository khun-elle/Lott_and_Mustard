## Lott and Mustard Replication

### 1. Introduction

Inspired by Crime, Deterrence, and Right-to-Carry Concealed Handguns by
Lott and Mustard, I was incited to expand their findings and attempt to
replicate their regression results using modern statistical techniques
to reaffirm their conclusion that passing shall issue laws is essential
to protect the fundamental right of self-defense for the U.S. citizens.

In 1997, Lott and Mustard published their controversial paper revealing
that right-to-carry concealed weapons laws are helpful in reducing
crimes and at the same time cause no increase in accidental deaths.
Their studies utilize cross-sectional time-series data for the U.S.
between 1977 to 1992 to investigate the effect of permitting the right
to use firearms on log crime rates. They found many types of crimes such
as murder rate, rape rate, and aggravated assaults rate are reduced
significantly for the counties that implement such laws. The sensational
counterintuitive association between carrying a concealed handgun and
the reduction in crimes are of interest to the public because it could
promote the health and safety of our citizens. Lott and Mustard further
claimed that these shall issue laws not only provide benefits to those
who carry handguns, but also to those who don’t. Especially among women,
even if a minute fraction of women own guns, “the external benefits to
other women from a woman carrying a concealed handgun appear to be large
relative to the gain produced by an additional man carrying a concealed
handgun up to 3 to 4 times”
<sup>1</sup>
. This is because the criminals face a heightened expected costs from
committing crimes and the higher probability of getting caught.
Although, the results could potentially lead to higher property crimes
due to substitution effects, the overall net gain from the passage of
shall issue laws is still positive.

Our analysis attempted to replicate the authors’ results using twoway
fixed effects even though the outcomes are likely to be biased due to
dynamic treatment effects. The issue of dynamic treatment effects calls
for other estimators that do not have a no sign flip property such as
Callaway & Sant’anna or Sun & Abraham. In addition, we implement bacon
decomposition to examine the weights and the average DID estimate.

The paper is organized as follows. In Sect. 2, we provide a background
understanding of the original Lott and Mustard project and economic
theories related to deterrence in crimes. Summary statistics of
state-level data are presented in Sect. 3. Empirical model and
estimation, twoway fixed effects model and Bacon decomposition are
estimated in Sect. 4. In Sect. 5, we extend the original analysis by
employing Callaway and Sant’Anna estimator and report overall ATTs with
standard errors. Sun and Abraham event studies are carried out in Sect.
6. Finally, Sect. 7 concludes.

### 2 Background and Economic Theory

#### 2.1 Related Literature

In their controversial paper, Lott and Mustard investigated the actual
impacts of right-to-carry concealed-handgun laws on the deterrence of
violent crime. They exploited a large data set of over 50,000
observations on nearly 200 variables. The variables include county level
crime rates in their log forms, the corresponding arrest rates,
demographic information, economic factors, and population
characteristics. Then, they performed regressions using log crime rates
as the dependent variables on shall-issue indicator variable, as well as
arrest rates, and other controls. Although it is likely that their
regressions suffer from specification error such as simultaneity bias in
the estimation of arrest rate and crime rate, their results are found to
be extremely robust. To enhance understandings, it is helpful to write
out the model they estimate:  
 
*C*<sub>*i**t*</sub> = *α* + *γ**I*<sub>*i**t*</sub> + *β**A*<sub>*i**t*</sub> + *δ**X*<sub>*i**t*</sub> + *ε*<sub>*i**t*</sub>
  
  Where
*I*<sub>*i**t*</sub>
is the shall-issue indicator variable,
*A*<sub>*i**t*</sub>
represents arrest rates, and
*X*<sub>*i**t*</sub>
denotes demographic information, economic factors, and population
characteristics. It is clear from the regression specification that the
effect of passing a shall-issue gun law is captured by the parameter
*γ*
. Positive value of
*γ*
implies that shall-issue provisions are associated with higher crime
rates, while negative value would suggest otherwise. This representation
also implies that every county possesses the same slope but different
intercepts depending on whether the law is adopted. The indicator
variable
*I*<sub>*i**t*</sub>
took the unit value if county i adopt the law in year t and zero
otherwise. From the data set, we observe that there are a total of 18
states that have ever adopted the laws at some point.

#### 2.2 the deterrence effect of concealed carry weapon (shall issue) laws

The idea of shall-issue laws is that “In those states that have
‘shall-issue’ laws, concealed weapons permits are granted unless there
is a good reason to deny them. In the remaining states, concealed
weapons permits are issued only if the applicant can show that he or she
needs to carry such a weapon”
<sup>2</sup>
. The corollary is that potential criminals are deterred from committing
crimes since there is a significantly greater chance of running into an
armed citizen. From this perspective, we can employ Becker’s model
(1968) to help explicate the decision making process of an offender
<sup>3</sup>
. Simply put, a risk-neutral offender solves his utility maximization
problem weighing costs and benefits of committing a crime. The offender
commits crime if and only if the expected payoffs are positive,
otherwise, he abstains from it. The cost can be raised by allowing
citizens to carry concealed guns or increasing the probability of being
arrested. When the offender believes that the probability of confronting
an armed person is high, he substitutes toward “property crimes
involving stealth and where the probability of contact between the
criminal and the victim are minimal” to avoid getting injured
<sup>1</sup>
. The second reasoning behind deterrence theory is that “victims who
have guns are in a much better position to defend themselves”
<sup>10</sup>
. Another strategy to reduce violent crime is increasing spending on
police, however, it is incontrovertible that simply allowing citizens to
defend themselves is more economical
<sup>2</sup>
.

To sum up, the authors found that shall-issue laws are significantly
associated with lower violent crime. They asserted that if the laws were
adopted nationwide in 1992, it would have been possible to avoid at
least 1,570 murders and 4,177 rapes. Although the rate of property crime
might increase due to substitution effects, the net effect of allowing
handguns remains positive and is socially beneficial. The robust results
allow us to draw confident conclusions about the impact of
right‐to‐carry laws on violent crime.

<div align="center">
<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
\*\*Table 1: A Table of Rollout State By State
</caption>
<thead>
<tr>
<th style="text-align:left;">
State
</th>
<th style="text-align:right;">
Year First Treated
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Alabama
</td>
<td style="text-align:right;">
1977
</td>
</tr>
<tr>
<td style="text-align:left;">
Connecticut
</td>
<td style="text-align:right;">
1977
</td>
</tr>
<tr>
<td style="text-align:left;">
New Hampshire
</td>
<td style="text-align:right;">
1977
</td>
</tr>
<tr>
<td style="text-align:left;">
North Dakota
</td>
<td style="text-align:right;">
1977
</td>
</tr>
<tr>
<td style="text-align:left;">
South Dakota
</td>
<td style="text-align:right;">
1977
</td>
</tr>
<tr>
<td style="text-align:left;">
Vermont
</td>
<td style="text-align:right;">
1977
</td>
</tr>
<tr>
<td style="text-align:left;">
Washington
</td>
<td style="text-align:right;">
1977
</td>
</tr>
<tr>
<td style="text-align:left;">
Indiana
</td>
<td style="text-align:right;">
1981
</td>
</tr>
<tr>
<td style="text-align:left;">
Maine
</td>
<td style="text-align:right;">
1986
</td>
</tr>
<tr>
<td style="text-align:left;">
Florida
</td>
<td style="text-align:right;">
1988
</td>
</tr>
<tr>
<td style="text-align:left;">
Virginia
</td>
<td style="text-align:right;">
1989
</td>
</tr>
<tr>
<td style="text-align:left;">
Georgia
</td>
<td style="text-align:right;">
1990
</td>
</tr>
<tr>
<td style="text-align:left;">
Pennsylvania
</td>
<td style="text-align:right;">
1990
</td>
</tr>
<tr>
<td style="text-align:left;">
West Virginia
</td>
<td style="text-align:right;">
1990
</td>
</tr>
<tr>
<td style="text-align:left;">
Idaho
</td>
<td style="text-align:right;">
1991
</td>
</tr>
<tr>
<td style="text-align:left;">
Mississippi
</td>
<td style="text-align:right;">
1991
</td>
</tr>
<tr>
<td style="text-align:left;">
Oregon
</td>
<td style="text-align:right;">
1991
</td>
</tr>
<tr>
<td style="text-align:left;">
Montana
</td>
<td style="text-align:right;">
1992
</td>
</tr>
</tbody>
</table>
<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>
Table 1
</caption>
<thead>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:right;">
Standard Deviation of State Means
</th>
<th style="text-align:right;">
Mean of Within-State Standard Deviations
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Violent Crime Rate
</td>
<td style="text-align:right;">
306.62
</td>
<td style="text-align:right;">
78.19
</td>
</tr>
<tr>
<td style="text-align:left;">
Murder Rate
</td>
<td style="text-align:right;">
6.19
</td>
<td style="text-align:right;">
1.50
</td>
</tr>
<tr>
<td style="text-align:left;">
Rape Rate
</td>
<td style="text-align:right;">
13.26
</td>
<td style="text-align:right;">
6.37
</td>
</tr>
<tr>
<td style="text-align:left;">
Aggravate Assult Rate
</td>
<td style="text-align:right;">
144.28
</td>
<td style="text-align:right;">
57.62
</td>
</tr>
<tr>
<td style="text-align:left;">
Robbery Rate
</td>
<td style="text-align:right;">
171.87
</td>
<td style="text-align:right;">
28.81
</td>
</tr>
<tr>
<td style="text-align:left;">
Property Crime Rate
</td>
<td style="text-align:right;">
1135.99
</td>
<td style="text-align:right;">
422.15
</td>
</tr>
<tr>
<td style="text-align:left;">
Auto Theft Rate
</td>
<td style="text-align:right;">
210.57
</td>
<td style="text-align:right;">
82.24
</td>
</tr>
<tr>
<td style="text-align:left;">
Burglary Rate
</td>
<td style="text-align:right;">
372.52
</td>
<td style="text-align:right;">
181.39
</td>
</tr>
<tr>
<td style="text-align:left;">
Larceny Rate
</td>
<td style="text-align:right;">
705.73
</td>
<td style="text-align:right;">
260.55
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Violent Crime
</td>
<td style="text-align:right;">
10.38
</td>
<td style="text-align:right;">
10.54
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Murder
</td>
<td style="text-align:right;">
17.26
</td>
<td style="text-align:right;">
29.23
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Rape
</td>
<td style="text-align:right;">
11.15
</td>
<td style="text-align:right;">
10.65
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Robbery
</td>
<td style="text-align:right;">
8.83
</td>
<td style="text-align:right;">
8.09
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Aggravated Assault
</td>
<td style="text-align:right;">
11.42
</td>
<td style="text-align:right;">
10.81
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Property Crimes
</td>
<td style="text-align:right;">
3.07
</td>
<td style="text-align:right;">
3.23
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Burglary
</td>
<td style="text-align:right;">
3.08
</td>
<td style="text-align:right;">
3.20
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Larceny
</td>
<td style="text-align:right;">
3.42
</td>
<td style="text-align:right;">
3.49
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Auto Theft
</td>
<td style="text-align:right;">
10.67
</td>
<td style="text-align:right;">
31.62
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate for Violent Crimes
</td>
<td style="text-align:right;">
10.38
</td>
<td style="text-align:right;">
10.54
</td>
</tr>
</tbody>
</table>

### 3. Data

The original data set from Lott and Mustard (1997) contains county-level
data from 1982 to 1992. The variables include nine types of crime rates:
violent crime rate, murder rate, rape rate, aggravated assault rate,
robbery rate, property crime rate, auto theft rate, burglary rate, and
larceny rate. The corresponding arrest rates for each type of crime are
also provided to help with analyses. Other demographics, economics, and
population characteristics are also supplied.

We use a subset of data examining only those years between 1977 to 1992.
While the authors used county-level data, we choose to work with
state-level data since the laws are ultimately at the state level. As
suggested by Ayres and Donohue III (2002), using county data is likely
to “exaggerate the amount of independent data available to the
researcher, thereby possibly creating the appearance of statistical
significance when in fact none exists”
<sup>4</sup>
. In addition, Lott and Mustard used arrest rates which resulted in many
counties with missing data being dropped which likely led to biases.
Using state-level data can improve accuracy and precision of our
regression analysis.

Table 2 presents a summary of violent crimes and their corresponding
arrest rates showing number of observations, mean, and standard
deviation. The summary statistics are also reported for economics, and
demographic variables.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>
Table 2: Summary Statistics for Various Crime Outcomes and Demographics
Variables
</caption>
<thead>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:right;">
Obs
</th>
<th style="text-align:right;">
Mean
</th>
<th style="text-align:right;">
Std Dev.
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Shalll
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.19118
</td>
<td style="text-align:right;">
0.39347
</td>
</tr>
<tr>
<td style="text-align:left;">
Violent Crime Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
483.92600
</td>
<td style="text-align:right;">
318.94250
</td>
</tr>
<tr>
<td style="text-align:left;">
Murder Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
7.76830
</td>
<td style="text-align:right;">
6.88171
</td>
</tr>
<tr>
<td style="text-align:left;">
Rape Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
33.98179
</td>
<td style="text-align:right;">
15.07213
</td>
</tr>
<tr>
<td style="text-align:left;">
Aggravate Assult Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
278.75520
</td>
<td style="text-align:right;">
159.64950
</td>
</tr>
<tr>
<td style="text-align:left;">
Robbery Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
163.42080
</td>
<td style="text-align:right;">
176.25060
</td>
</tr>
<tr>
<td style="text-align:left;">
Property Crime Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
4618.33900
</td>
<td style="text-align:right;">
1210.46500
</td>
</tr>
<tr>
<td style="text-align:left;">
Auto Theft Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
410.29510
</td>
<td style="text-align:right;">
231.15370
</td>
</tr>
<tr>
<td style="text-align:left;">
Burglary Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
1239.33640
</td>
<td style="text-align:right;">
417.75760
</td>
</tr>
<tr>
<td style="text-align:left;">
Larceny Rate
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
2968.70790
</td>
<td style="text-align:right;">
751.02340
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Violent Crime
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
41.09062
</td>
<td style="text-align:right;">
22.20364
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Murder
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
91.29890
</td>
<td style="text-align:right;">
55.94277
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Rape
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
41.02308
</td>
<td style="text-align:right;">
17.38869
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Robbery
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
31.45814
</td>
<td style="text-align:right;">
13.59275
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Aggravated Assault
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
44.62497
</td>
<td style="text-align:right;">
16.97827
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Property Crimes
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
16.91801
</td>
<td style="text-align:right;">
4.67699
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Burglary
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
13.80441
</td>
<td style="text-align:right;">
4.57124
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Larceny
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
18.53719
</td>
<td style="text-align:right;">
5.19609
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Auto Theft
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
22.34548
</td>
<td style="text-align:right;">
37.61143
</td>
</tr>
<tr>
<td style="text-align:left;">
Arrest Rate For Violent Crimes
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
41.09062
</td>
<td style="text-align:right;">
22.20364
</td>
</tr>
<tr>
<td style="text-align:left;">
Rpc Personal Income
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
9351.82100
</td>
<td style="text-align:right;">
4689.70100
</td>
</tr>
<tr>
<td style="text-align:left;">
Rpc Unemployment Insurance
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
50.01872
</td>
<td style="text-align:right;">
38.08082
</td>
</tr>
<tr>
<td style="text-align:left;">
Rpc Income Maintenance
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
115.27561
</td>
<td style="text-align:right;">
70.95281
</td>
</tr>
<tr>
<td style="text-align:left;">
Rpc Retirement Pmt
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
1002.22570
</td>
<td style="text-align:right;">
546.46790
</td>
</tr>
</tbody>
</table>
<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>
Table 2 Cont.
</caption>
<thead>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:right;">
Obs
</th>
<th style="text-align:right;">
Mean
</th>
<th style="text-align:right;">
Std Dev.
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
White Male Between 10-19
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.06721
</td>
<td style="text-align:right;">
0.01514
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Male Between 10-19
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.01021
</td>
<td style="text-align:right;">
0.01122
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Male Between 10-19
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00364
</td>
<td style="text-align:right;">
0.00755
</td>
</tr>
<tr>
<td style="text-align:left;">
White Female Between 10-19
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.06411
</td>
<td style="text-align:right;">
0.01485
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Female Between 10-19
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.01009
</td>
<td style="text-align:right;">
0.01139
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Female Between 10-19
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00350
</td>
<td style="text-align:right;">
0.00727
</td>
</tr>
<tr>
<td style="text-align:left;">
White Male Between 20-29
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.07414
</td>
<td style="text-align:right;">
0.01197
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Male Between 20-29
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00956
</td>
<td style="text-align:right;">
0.01041
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Male Between 20-29
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00352
</td>
<td style="text-align:right;">
0.00717
</td>
</tr>
<tr>
<td style="text-align:left;">
White Female Between 20-29
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.07258
</td>
<td style="text-align:right;">
0.01229
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Female Between 20-29
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.01036
</td>
<td style="text-align:right;">
0.01229
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Female Between 20-29
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00358
</td>
<td style="text-align:right;">
0.00729
</td>
</tr>
<tr>
<td style="text-align:left;">
White Male Between 30-39
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.06633
</td>
<td style="text-align:right;">
0.01184
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Male Between 30-39
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00707
</td>
<td style="text-align:right;">
0.00822
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Male Between 30-39
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00298
</td>
<td style="text-align:right;">
0.00658
</td>
</tr>
<tr>
<td style="text-align:left;">
White Female Between 30-39
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.06584
</td>
<td style="text-align:right;">
0.01167
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Female Between 30-39
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00812
</td>
<td style="text-align:right;">
0.00982
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Female Between 30-39
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00328
</td>
<td style="text-align:right;">
0.00698
</td>
</tr>
<tr>
<td style="text-align:left;">
White Male Between 40-49
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.04800
</td>
<td style="text-align:right;">
0.00905
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Male Between 40-49
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00462
</td>
<td style="text-align:right;">
0.00557
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Male Between 40-49
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00196
</td>
<td style="text-align:right;">
0.00467
</td>
</tr>
<tr>
<td style="text-align:left;">
White Female Between 40-49
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.04832
</td>
<td style="text-align:right;">
0.00899
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Female Between 40-49
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00547
</td>
<td style="text-align:right;">
0.00681
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Female Between 40-49
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00219
</td>
<td style="text-align:right;">
0.00511
</td>
</tr>
<tr>
<td style="text-align:left;">
White Male Between 50-64
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.05799
</td>
<td style="text-align:right;">
0.01046
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Male Between 50-64
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00516
</td>
<td style="text-align:right;">
0.00687
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Male Between 50-64
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00195
</td>
<td style="text-align:right;">
0.00608
</td>
</tr>
<tr>
<td style="text-align:left;">
White Female Between 50-64
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.06250
</td>
<td style="text-align:right;">
0.01234
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Female Between 50-64
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00646
</td>
<td style="text-align:right;">
0.00889
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Female Between 50-64
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00226
</td>
<td style="text-align:right;">
0.00694
</td>
</tr>
<tr>
<td style="text-align:left;">
White Male Over 65
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.04262
</td>
<td style="text-align:right;">
0.01140
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Male Over 65
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00354
</td>
<td style="text-align:right;">
0.00481
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Male Over 65
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00122
</td>
<td style="text-align:right;">
0.00463
</td>
</tr>
<tr>
<td style="text-align:left;">
White Female Over 65
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.06228
</td>
<td style="text-align:right;">
0.01666
</td>
</tr>
<tr>
<td style="text-align:left;">
Black Female Over 65
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00543
</td>
<td style="text-align:right;">
0.00778
</td>
</tr>
<tr>
<td style="text-align:left;">
Other Female Over 65
</td>
<td style="text-align:right;">
816
</td>
<td style="text-align:right;">
0.00138
</td>
<td style="text-align:right;">
0.00476
</td>
</tr>
</tbody>
</table>

### 4. Empirical model and Estimation

#### 4.1 Twoway Fixed Effects

We reexamine the twoway fixed effects regression (TWFE) similarly to the
one used by the authors, only we will be using the state-level data
instead of county-level data. It is critical to note that TWFE estimates
will be biased if average treatment effect changes over time or parallel
trend assumption fails to hold. We proceed with the nine regressions
where the outcome is each type of crime rates in logarithmic form. Other
variables such as shall issue dummy, arrest rates, economics, and
demographic information are used as controls. The following table
presents the results.

    ## NOTE: 14 observations removed because of NA values (RHS: 14).

    ## NOTE: 10 observations removed because of NA values (RHS: 10).

    ## NOTE: 17 observations removed because of NA values (RHS: 17).

    ## NOTE: 8 observations removed because of NA values (RHS: 8).

    ## NOTE: 7 observations removed because of NA values (RHS: 7).
    ## NOTE: 7 observations removed because of NA values (RHS: 7).
    ## NOTE: 7 observations removed because of NA values (RHS: 7).
    ## NOTE: 7 observations removed because of NA values (RHS: 7).

    ## NOTE: 8 observations removed because of NA values (RHS: 8).

<table style="border-collapse:collapse; border:none;">
<tr>
<th style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm;  text-align:left; ">
 
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Violent Crime Rate
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Murder Rate
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Rape Rate
</th>
</tr>
<tr>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  text-align:left; ">
Predictors
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
std. Error
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
std. Error
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  col7">
std. Error
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
shalll
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.09775
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.02071
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.05066
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.03858
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.03398
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.02718
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
Its corresponding Arrest<br>Rate
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00036
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00040
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00060
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00038
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Personal Income
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00004
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00001
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00005
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00001
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Unemployment<br>Insurance
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00015
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00025
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00102
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00016
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00028
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Income Maintenance
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00003
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00036
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00046
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00056
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00079
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00043
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC retirement pmt
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00008
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00009
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00017
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00010
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-63.93429
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
23.04863
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
9.23603
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
44.09839
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-104.41321
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
26.53565
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
106.49051
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
54.99847
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
108.59308
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
83.31742
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-31.45459
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
68.04392
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
390.41177
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
145.61340
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-462.61888
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
239.40267
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-110.51101
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
138.82030
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
72.01944
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
23.56975
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-13.09908
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
45.67416
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
116.29746
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
27.86843
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-78.25589
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
54.92694
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-53.75880
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
78.16889
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
50.69286
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
69.72812
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-286.96533
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
141.28051
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
392.90321
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
213.67262
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
225.09534
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
130.24926
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
9.11862
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
7.72194
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
23.61683
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
14.09412
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-1.12033
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
10.41640
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
3.13277
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
30.25338
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-28.36895
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
48.63261
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
134.58789
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
42.54807
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-89.25171
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
78.52515
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
139.91898
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
147.48453
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
42.93354
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
97.83643
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.74510
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
9.12952
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-24.13657
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
16.70711
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
32.50377
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
12.82443
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-14.64648
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
29.11878
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
34.58401
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
44.37590
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-73.10564
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
38.38099
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-2.47440
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
63.01059
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
45.48957
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
126.35510
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-67.24677
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
92.87714
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
50.86677
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
14.95841
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-14.52110
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.47142
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.11918
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
21.58348
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
42.27123
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
39.31507
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-81.88212
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
68.94124
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-302.24993
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
53.76613
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
526.75466
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
108.54230
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-53.85583
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
252.15102
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
291.60677
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
131.67535
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-40.04014
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
15.43884
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
40.68557
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.06709
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
8.67213
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
20.61696
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
1.16667
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
30.95773
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
54.47495
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
51.03184
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
228.41981
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
40.14889
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-375.15032
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
97.76274
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
30.43240
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
214.06073
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-171.37809
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
113.95041
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-64.14780
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
18.81129
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-32.94867
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
41.19445
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
56.61844
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
22.49749
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
128.76132
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
65.09433
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-50.90077
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
97.33189
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
158.32378
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
84.66196
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-269.67712
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
126.46329
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
118.18092
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
260.36212
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-465.33421
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
153.15870
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
67.29883
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
19.65524
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
40.13030
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
40.98404
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-49.32220
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
21.82785
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-82.69352
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
57.65823
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
157.20153
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
88.93386
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-140.56672
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
78.10856
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
248.18469
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
101.17289
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-35.83759
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
247.60177
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
451.80195
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
120.80313
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-16.22705
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
19.48362
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
5.40684
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
34.18356
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-65.40697
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
20.56670
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
68.54353
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
57.38100
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-172.00956
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
86.26888
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-16.77301
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
61.04260
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-282.31630
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
98.28068
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-55.35348
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
322.14477
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-415.97874
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
138.84792
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
30.31866
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
16.73387
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-6.80361
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.94076
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
61.15215
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
18.22682
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-64.96979
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
51.52545
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
29.42392
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
85.65680
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
39.24933
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
63.13001
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
71.61000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
80.62415
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-24.55105
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
176.08019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
174.48925
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
112.10075
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-88.81041
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
13.09936
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-46.39578
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
22.30941
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
40.58238
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
16.98692
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
171.24554
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
56.08427
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-169.02652
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
91.27575
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-235.09472
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
70.52822
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-182.55760
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
195.94365
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
130.70738
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
417.53153
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-285.73658
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
191.99360
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
68.15398
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
8.88153
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
33.14981
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
16.37226
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-14.82481
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
11.58439
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-110.87405
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
41.00362
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
135.05517
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
58.10214
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
158.39276
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
53.10058
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-22.24071
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
142.58261
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-85.22749
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
247.44743
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
90.60793
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
146.88702
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
density
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00078
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00017
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00053
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00022
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00036
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00019
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
popstate
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00000
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm; border-top:1px solid;">
Observations
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
802
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
806
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
799
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;">
R<sup>2</sup> / R<sup>2</sup> adjusted
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.981 / 0.979
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.948 / 0.940
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.942 / 0.933
</td>
</tr>
</table>
<table style="border-collapse:collapse; border:none;">
<tr>
<th style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm;  text-align:left; ">
 
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Aggravate Assult Rate
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Robbery Rate
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Property Crime Rate
</th>
</tr>
<tr>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  text-align:left; ">
Predictors
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
std. Error
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
std. Error
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  col7">
std. Error
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
shalll
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.10098
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.02919
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.04779
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.03083
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00720
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.01368
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
Its corresponding Arrest<br>Rate
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00012
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00037
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00040
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00202
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00106
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Personal Income
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00007
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00001
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00001
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00001
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Unemployment<br>Insurance
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00009
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00034
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00070
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00034
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00024
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00016
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Income Maintenance
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00092
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00048
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00042
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00051
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00020
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC retirement pmt
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00007
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00015
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00006
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00012
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00004
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00005
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-23.62391
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
35.83146
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-176.19129
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
33.90475
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-14.94973
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
13.51165
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
219.64718
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
70.97069
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
102.70057
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
86.95635
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-63.78579
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
37.33003
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
513.74843
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
190.70808
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
182.96014
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
146.86678
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
118.23843
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
60.83661
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.07099
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
36.65556
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
185.63830
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
35.01540
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
21.32845
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
13.86891
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-183.26321
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
67.03384
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-98.36233
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
83.63550
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
46.55455
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
35.55154
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-396.12120
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
185.06615
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-90.08432
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
140.54751
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-112.12742
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
60.03761
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
2.39154
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
10.26716
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
45.42257
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
11.82011
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
6.97955
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
4.92820
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-31.49373
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
39.74672
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-43.86818
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
43.37852
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-21.11673
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
17.91197
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-86.93231
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
106.51667
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-120.22605
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
107.34346
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-73.89357
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
42.39632
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
7.93497
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
12.02858
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-45.96671
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
14.41697
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-8.47671
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
6.03979
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
11.34932
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
36.23395
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
16.26912
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
41.05285
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
9.90724
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
17.28678
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-48.72727
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
87.13393
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
85.79247
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
99.50990
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
55.19131
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
37.37534
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
69.88784
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
20.73060
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
48.87439
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
24.08141
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
1.03247
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
8.11941
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
127.95902
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
58.82590
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
93.39596
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
55.73607
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
64.63511
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
25.24677
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
499.10766
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
151.48720
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
572.16481
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
159.28391
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
86.42250
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
61.18147
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-71.45067
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
21.59485
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-32.95749
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
25.47732
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-2.51613
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
8.59749
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-42.96828
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
43.83501
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-58.52136
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
42.40293
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-51.34759
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
19.47503
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-294.12372
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
134.57178
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-504.09038
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
144.01734
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-110.29887
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
51.62540
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-118.72473
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
26.93342
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-2.37054
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.17788
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-25.41874
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
10.73543
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
49.54494
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
86.18863
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
202.63874
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
88.74032
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
82.71378
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
38.29787
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-269.20019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
158.05561
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
63.11729
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
164.03741
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
243.75190
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
75.38701
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
124.33672
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.21566
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-1.52659
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.34842
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
24.78925
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
11.54078
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-54.40258
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
75.77935
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-84.56966
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
82.31515
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-26.15754
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
35.83719
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
214.59925
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
125.89332
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
16.56594
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
130.30491
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-151.03205
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
59.64599
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-33.34385
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
26.67023
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
46.18062
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
29.40368
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-24.34047
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
10.30142
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
166.51967
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
74.05619
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-158.34694
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
83.31232
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-29.19835
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
33.88233
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-285.84016
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
126.34081
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-294.24926
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
141.20780
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-183.74506
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
65.00607
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
57.73385
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
22.81002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-51.45802
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
24.95847
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
13.12013
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
9.23522
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-177.04234
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
65.77049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
158.93582
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
73.78367
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
20.71683
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
29.23080
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-38.21936
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
101.33113
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
217.96058
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
122.36149
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
157.93828
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
55.97466
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-133.61482
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
18.13470
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-41.74382
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
17.18630
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-46.52540
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
7.40071
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
378.02416
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
71.98966
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-24.08973
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
75.51560
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
13.84257
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
33.47237
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-21.34555
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
264.33778
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-441.38794
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
228.17744
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-140.00242
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
107.64897
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
94.63263
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
13.35824
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
42.48169
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
12.41756
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
25.97796
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
4.89705
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-198.37047
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
52.35252
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-50.42140
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
55.12019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-52.90493
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
24.35791
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-131.18437
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
196.19575
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
112.30346
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
159.10492
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-40.01857
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
74.67091
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
density
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00068
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00103
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00025
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00051
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00011
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
popstate
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00000
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm; border-top:1px solid;">
Observations
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
808
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
809
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
809
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;">
R<sup>2</sup> / R<sup>2</sup> adjusted
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.964 / 0.958
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.984 / 0.981
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.964 / 0.959
</td>
</tr>
</table>
<table style="border-collapse:collapse; border:none;">
<tr>
<th style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm;  text-align:left; ">
 
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Auto Theft Rate
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Burglary Rate
</th>
<th colspan="2" style="border-top: double; text-align:center; font-style:normal; font-weight:bold; padding:0.2cm; ">
Log Larceny Rate
</th>
</tr>
<tr>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  text-align:left; ">
Predictors
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
std. Error
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
std. Error
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  ">
Estimates
</td>
<td style=" text-align:center; border-bottom:1px solid; font-style:italic; font-weight:normal;  col7">
std. Error
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
shalll
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.01039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.02793
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.04512
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.01987
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00399
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.01407
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
Its corresponding Arrest<br>Rate
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00474
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00180
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00042
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00087
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00013
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00011
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Personal Income
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00003
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00001
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00002
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00001
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Unemployment<br>Insurance
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00074
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00035
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00071
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00024
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00015
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC Income Maintenance
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00051
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00045
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00003
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00007
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00018
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
RPC retirement pmt
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00009
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00010
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00009
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00008
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00001
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00005
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-46.09415
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
25.49246
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-20.06362
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
19.35218
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-19.96650
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
13.91711
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
153.23510
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
70.89673
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-92.84450
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
54.92875
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-66.98913
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
36.56371
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
93.90494
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
112.04155
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
339.22359
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
94.83101
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
15.97890
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
53.25833
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
45.63865
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
26.49325
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
23.08448
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
19.76146
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
28.54042
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
14.30972
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-160.60076
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
66.34933
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
69.03437
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
52.78925
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
50.30884
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
35.30001
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 1019
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-30.97954
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
107.19360
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-321.12420
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
94.26434
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-14.41316
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
52.21817
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
13.14646
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
9.81363
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
10.13936
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
6.58229
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
7.82228
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
4.61559
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-108.64436
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
39.18157
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-37.39903
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
26.05299
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-11.51698
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
18.18037
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-66.79862
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
87.58003
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-47.16164
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
61.34693
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-55.45880
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
42.02028
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-20.64922
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
11.23226
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-10.21335
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
8.66060
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-8.34130
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
5.71891
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
87.84627
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
38.62514
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
2.33551
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
24.83891
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
11.49831
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
17.39942
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 2029
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
74.32312
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
75.63208
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
37.46533
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
54.62251
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
41.64650
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
38.51460
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
31.89024
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
20.39472
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-7.40331
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
12.03023
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
2.28908
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
7.85387
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
246.66175
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
53.22873
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
79.82247
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
37.07784
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
48.25933
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
24.52558
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
81.66636
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
126.25382
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
181.43550
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
86.88221
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
47.30843
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
60.88394
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-48.66394
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
20.71838
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
13.58610
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
12.20913
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-2.31026
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
8.58832
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-150.76057
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
42.09280
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-43.30509
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
29.96969
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-49.45516
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
18.68868
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 3039
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-100.08345
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
116.16660
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-216.15053
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
72.43915
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-79.28006
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
52.45096
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-40.90035
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
23.27252
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-23.17836
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
16.31450
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-25.97802
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
10.19319
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-77.88283
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
76.77233
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
71.62376
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
60.21805
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
119.49553
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
36.92982
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
95.24049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
128.61810
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
209.34969
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
112.97757
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
263.13654
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
71.56761
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
43.49635
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
23.02784
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
20.29378
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
17.32247
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
27.01051
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
10.93938
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
115.93464
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
73.33194
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-38.77726
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
55.78549
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-46.15076
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
33.82074
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 4049
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
81.80461
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
104.26295
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-130.17615
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
90.28866
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-169.61036
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
56.65296
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
66.99038
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
23.19808
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-29.69917
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
15.79440
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-23.47249
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
9.96233
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-77.94535
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
79.80935
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
93.25959
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
49.06478
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-65.09301
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
32.42082
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-586.21805
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
134.38276
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-214.29213
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
103.10869
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-152.70343
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
59.64260
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-83.23505
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
20.54166
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
18.24263
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
13.90085
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
16.03871
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
9.07141
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
49.21176
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
63.26220
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-39.55054
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
39.36026
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
41.91545
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
30.03344
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 5064
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
398.33515
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
112.44550
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
150.69238
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
84.71167
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
152.52317
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
49.30670
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-125.54156
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
15.60336
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-49.01898
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
10.12431
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-31.48280
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
7.27137
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
102.98654
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
65.95147
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-59.10490
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
44.29815
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
31.20937
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
34.67894
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnm 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-432.64244
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
253.07719
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-413.53075
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
160.18956
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-29.91345
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
98.37817
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppwf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
84.82877
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
10.84931
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
35.78423
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
6.79554
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
12.84824
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
5.00502
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppbf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-75.19459
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
47.36021
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-11.18660
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
30.79618
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-69.25338
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
25.92845
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
ppnf 65 o
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
30.99880
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
178.11318
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
136.40516
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
115.50359
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-94.07776
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
67.45732
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
density
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00057
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00020
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00052
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00014
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00052
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00011
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; ">
popstate
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  ">
-0.00000
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:center;  col7">
0.00000
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm; border-top:1px solid;">
Observations
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
809
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
809
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left; border-top:1px solid;" colspan="2">
808
</td>
</tr>
<tr>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; text-align:left; padding-top:0.1cm; padding-bottom:0.1cm;">
R<sup>2</sup> / R<sup>2</sup> adjusted
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.961 / 0.955
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.955 / 0.948
</td>
<td style=" padding:0.2cm; text-align:left; vertical-align:top; padding-top:0.1cm; padding-bottom:0.1cm; text-align:left;" colspan="2">
0.966 / 0.961
</td>
</tr>
</table>

Examination of the regression results shows the effect of
concealed-handgun laws on various categories of crime. Specifically, we
observe a negative relationship between passage of the laws and all
types of crime except for larceny, suggesting that adopting shall-issue
statutes can significantly reduce crime rates. However, the caveat of
this regression specification is that by using a single indicator
variable for the laws, we are explicitly assuming the same effect across
all states and years. This issue has been investigated further by Black
and Nagin (1998). They generated state-specific dummy variables for the
shall-issue laws and found that the signs of the coefficients vary
across states, with some positive and some negative
<sup>5</sup>
. So the effects are unclear and thus, we will explore other models in
Section 4 before drawing any conclusions about the laws.

#### 4.2 Bacon Decomposition

The tables below present Bacon decomposition of twoway fixed effects
estimate. Goodman-Bacon (2019) shows that the estimate is a weighted
average of 2x2 parameters and their weights as determined by their
relative size in the data. Under restrictive assumptions of parallel
trends and time invariant treatment effects, the estimate reflects the
actual ATT. In our analysis of the effect of shall-issue laws on crime
rates, states opted for the laws at different points in time, so we can
expect twoway fixed effects models to be biased.

It is important to note that twoway fixed effects do not weight all 2x2s
uniformly. It places higher weight to states that were treated in the
middle of the panel, since these states have maximum treatment variance.
In our data, about 75 percent of the weights are assigned to treated
versus untreated units. So this 2x2 contributes the most to the
resulting twoway fixed effects estimate followed by later versus always
treated, and earlier versus later respectively. The only problematic
comparison is when you compare the later group to the already-treated
earlier group since the estimate also contains parallel trends bias and
heterogeneity in time bias. Unless the parallel trends assumption is
satisfied and the treatment effects are constant for a group over time,
we suffer severely from bias
<sup>6</sup>
.

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Violent Crime Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
0.1000224
</td>
<td style="text-align:right;">
0.0051705
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
-0.0596393
</td>
<td style="text-align:right;">
-0.0044690
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
0.0208665
</td>
<td style="text-align:right;">
-0.0017883
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
-0.1422163
</td>
<td style="text-align:right;">
-0.0839315
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = -0.085"

    ## [1] "Two-way FE estimate = -0.085"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Murder Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
0.0545024
</td>
<td style="text-align:right;">
0.0054525
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
-0.0384771
</td>
<td style="text-align:right;">
-0.0012542
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
0.0188246
</td>
<td style="text-align:right;">
0.0000418
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
-0.0848318
</td>
<td style="text-align:right;">
-0.0415959
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = -0.0374"

    ## [1] "Two-way FE estimate = -0.0374"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Rape Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
-0.0264193
</td>
<td style="text-align:right;">
-0.0026425
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
-0.2001560
</td>
<td style="text-align:right;">
-0.0305273
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
-0.0106483
</td>
<td style="text-align:right;">
-0.0019283
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
-0.0030557
</td>
<td style="text-align:right;">
0.0030423
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = -0.0321"

    ## [1] "Two-way FE estimate = -0.0321"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Aggravate Assault Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
0.1487745
</td>
<td style="text-align:right;">
0.0079628
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
-0.0314314
</td>
<td style="text-align:right;">
0.0009728
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
-0.0174274
</td>
<td style="text-align:right;">
-0.0034427
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
-0.2207888
</td>
<td style="text-align:right;">
-0.1375213
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = -0.132"

    ## [1] "Two-way FE estimate = -0.132"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Robbery Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
0.0961047
</td>
<td style="text-align:right;">
0.0073682
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
0.0940074
</td>
<td style="text-align:right;">
0.0174822
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
0.1505417
</td>
<td style="text-align:right;">
0.0020947
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
-0.0263060
</td>
<td style="text-align:right;">
-0.0100514
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = 0.0169"

    ## [1] "Two-way FE estimate = 0.0169"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Property Crime Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
0.0036098
</td>
<td style="text-align:right;">
-0.0007191
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
0.0504242
</td>
<td style="text-align:right;">
0.0085564
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
0.0490119
</td>
<td style="text-align:right;">
0.0001507
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
0.0238073
</td>
<td style="text-align:right;">
0.0210569
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = 0.029"

    ## [1] "Two-way FE estimate = 0.029"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Auto Theft Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
0.0887179
</td>
<td style="text-align:right;">
0.0056843
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
0.1885142
</td>
<td style="text-align:right;">
0.0336117
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
0.0994063
</td>
<td style="text-align:right;">
0.0020305
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
0.0086094
</td>
<td style="text-align:right;">
0.0262756
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = 0.0676"

    ## [1] "Two-way FE estimate = 0.0676"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Burglary Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
-0.0146061
</td>
<td style="text-align:right;">
-0.0023226
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
0.0169005
</td>
<td style="text-align:right;">
0.0048413
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
-0.0157802
</td>
<td style="text-align:right;">
-0.0013013
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
-0.0068820
</td>
<td style="text-align:right;">
0.0064291
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = 0.0076"

    ## [1] "Two-way FE estimate = 0.0076"

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Bacon Decomposition: Log Larceny Rate**
</caption>
<thead>
<tr>
<th style="text-align:left;">
Type
</th>
<th style="text-align:right;">
Weights
</th>
<th style="text-align:right;">
Average DID Estimate
</th>
<th style="text-align:right;">
Weighted Estimate
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Earlier vs Later Treated
</td>
<td style="text-align:right;">
0.0683810
</td>
<td style="text-align:right;">
0.1000224
</td>
<td style="text-align:right;">
0.0051705
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Always Treated
</td>
<td style="text-align:right;">
0.1589397
</td>
<td style="text-align:right;">
-0.0596393
</td>
<td style="text-align:right;">
-0.0044690
</td>
</tr>
<tr>
<td style="text-align:left;">
Later vs Earlier Treated
</td>
<td style="text-align:right;">
0.0233921
</td>
<td style="text-align:right;">
0.0208665
</td>
<td style="text-align:right;">
-0.0017883
</td>
</tr>
<tr>
<td style="text-align:left;">
Treated vs Untreated
</td>
<td style="text-align:right;">
0.7492871
</td>
<td style="text-align:right;">
-0.1422163
</td>
<td style="text-align:right;">
-0.0839315
</td>
</tr>
</tbody>
</table>

    ## [1] "Weighted sum of decomposition = 0.0361"

    ## [1] "Two-way FE estimate = 0.0361"

### 5. Callaway and Sant’Anna

Since dynamic treatment effects can bias twoway fixed effect estimator
by causing sign flip, we turn to Callaway and Sant’Anna (2020) estimator
to help fix the issues that arise when using TWFE. Callaway and
Sant’Anna deal with staggered treatment timing by considering each group
separately by when they were treated. The estimator of interest is
“group-time treatment effects” which can be calculated by “comparing the
post-treatment outcomes of the groups treated in that period against the
never-treated groups that are most similar to those treated groups”
<sup>7</sup>
. The major difference between TWFE and Callaway and Sant’Anna estimator
is that the latter doesn’t use already-treated as controls.

After we estimate group-time average treatment effects for each group
across all time periods, we can then aggregate them into an overall
treatment effect parameter. Therefore, the resulting estimate is the
average effect of the treatment, or the shall-issue laws, experienced by
all states that ever adopted the laws. The following table reports
overall ATTs and standard errors for the model that uses each of the
nine crime rates as a dependent variable, including year and state
identification, and corresponding arrest rates as controls. We choose to
present the overall treatment effect rather than group-level effects
because many states simply do not have enough states per treatment date
for the bootstrapping to provide accurate 95 percent confidence
intervals.

By comparing the results below to those estimated by using TWFE in
Section 3, we notice the discrepancies between them in the coefficients
and signs. In particular, the coefficients of property crime rate, rape
rate, robbery rate, and auto theft rate switched signs. Callaway and
Sant’Anna pointed out in their paper a special case of the only time
where the overall effect parameters estimated using TWFE and their
method exactly match is when the group-time treatment effect is the same
across all states and years
<sup>8</sup>
.

    ## `summarise()` has grouped output by 'fipsstat'. You can override using the
    ## `.groups` argument.

    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).
    ## NOTE: 1 observation removed because of NA values (RHS: 1).

<table class="table table-striped" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
**Table 4 Callaway and Sant’anna Overall ATTs and Standard Errors**
</caption>
<thead>
<tr>
<th style="text-align:left;">
</th>
<th style="text-align:right;">
Overall ATTs
</th>
<th style="text-align:right;">
Overall SEs
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
log.Violent_Crime_Rate
</td>
<td style="text-align:right;">
-0.0221834
</td>
<td style="text-align:right;">
0.0222624
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Murder_Rate
</td>
<td style="text-align:right;">
-0.0531075
</td>
<td style="text-align:right;">
0.0250905
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Rape_Rate
</td>
<td style="text-align:right;">
0.0299128
</td>
<td style="text-align:right;">
0.0255007
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Aggravate_Assult_Rate
</td>
<td style="text-align:right;">
-0.0134550
</td>
<td style="text-align:right;">
0.0375775
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Robbery_Rate
</td>
<td style="text-align:right;">
0.0276803
</td>
<td style="text-align:right;">
0.0322382
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Property_Crime_Rate
</td>
<td style="text-align:right;">
0.0113524
</td>
<td style="text-align:right;">
0.0102472
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Auto_Theft_Rate
</td>
<td style="text-align:right;">
0.0126156
</td>
<td style="text-align:right;">
0.0346701
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Burglary_Rate
</td>
<td style="text-align:right;">
-0.0131969
</td>
<td style="text-align:right;">
0.0139062
</td>
</tr>
<tr>
<td style="text-align:left;">
log.Larceny_Rate
</td>
<td style="text-align:right;">
0.0265453
</td>
<td style="text-align:right;">
0.0127498
</td>
</tr>
</tbody>
</table>

### 6. Sun and Abraham

### 7. Conclusion

#### 7.1 Summary and Conclusions

The publication of Lott and Mustard’s sensational findings of the
negative association between citizen gun ownership and criminal
deterrence has been of interest to legislators and policymakers. The
authors utilized twoway fixed effects regressions to conclude that
relatively easy access to handguns increases expected cost of committing
crimes and therefore reduces crime rates. Their radical conclusion
follows an economic model of rational deterrence which states that once
the cost of committing an offense outweighs the benefits, the criminals
are deterred, assuming that “there is no difference between criminal and
noncriminals, other than their assessment of the costs and benefits of
committing crimes”
<sup>11</sup>
.

The authors’ methodology for investigating the relationship between
shall-issue laws and crime rates employs twoway fixed effects
regressions which can suffer from substantial bias in the case of
dynamic treatment effects and staggered treatment adoption. We reexamine
the association using estimators that are robust to differential timing
such as those invented by Callaway and Sant’Anna and Sun and Abraham. We
find that concealed-weapons laws have negative effects only on a subset
of all crime rates. In particular, we find that the laws only help
reduce violent crime rates, aggravated assault rates, murder rates, and
burglary rates. For other crimes, results show positive effects. In any
case, the Lott and Mustard analysis serves as a starting point that
calls for further analysis on this topic. This sort of analysis, coupled
with modern statistical techniques, enable legislators and policymakers
to devise appropriate policies to achieve safety and security of the
nation.

#### 7.2 Things I learned from this exercise

Lott and Mustard replication offers a valuable hands-on experience on
how to implement contemporary statistical methods on the ongoing
controversial debate on right-to-carry concealed weapons laws. I get to
deal with the original data set and perform analyses to reexamine the
findings of the original study. The assignment also leads me to do
further research on related literature regarding this topic. The
conversation around this topic is definitely contentious because many
researchers pointed out flaws and possible specification errors in the
original paper. Moody (2001) disagrees with the use of log-level
regression, citing that it is unusual for a crime study. Instead, he
proceeds with double-log model and finds smaller results than those
suggested by Lott and Mustard. In addition, he pointed out the issue of
omitted variables bias, namely, incarceration rate. Further, he
suggested investigation of time-series aspects of the data
<sup>2</sup>
. All in all, the assignment helps me familiarize myself with topics
discussed among researchers, and allows me to apply statistical
techniques to draw causal inference.

### References

1.  Lott, Jr., John R., and David B. Mustard. “Crime, Deterrence, and
    Right‐to‐Carry Concealed Handguns.” The Journal of Legal Studies 26,
    no. 1 (January 1997): 1–68. <https://doi.org/10.1086/467988>.

2.  Moody, Carlisle E. “Testing for the Effects of Concealed Weapons
    Laws: Specification Errors and Robustness.” The Journal of Law and
    Economics 44, no. S2 (October 2001): 799–813.
    <https://doi.org/10.1086/323313>.

3.  Rauhut, Heiko. “Game Theory.” Oxford Handbooks Online, November
    8, 2015. <https://doi.org/10.1093/oxfordhb/9780199338801.013.7>.

4.  Ayres, Ian, and John Donohue. “Shooting down the More Guns, Less
    Crime Hypothesis,” November 2002. <https://doi.org/10.3386/w9336>.

5.  Moody, Carlisle E., and Thomas B. Marvell. “The Debate on
    Right-to-Carry Concealed Weapons Laws,” January 2008.

6.  Cunningham, Scott. Causal Inference: The Mixtape. New Haven, CT:
    Yale University Press, 2021.

7.  Huntington-Klein, Nick. The Effect: An Introduction to Research
    Design and Causality. Boca Raton, FL: CRC Press, 2022.

8.  Callaway, Brantly, and Pedro H.C. Sant’Anna.
    “Difference-in-Differences with Multiple Time Periods.” Journal of
    Econometrics 225, no. 2 (2021): 200–230.
    <https://doi.org/10.1016/j.jeconom.2020.12.001>.

9.  Sun, Liyang, and Sarah Abraham. “Estimating Dynamic Treatment
    Effects in Event Studies with Heterogeneous Treatment Effects.”
    Journal of Econometrics 225, no. 2 (2021): 175–99.
    <https://doi.org/10.1016/j.jeconom.2020.09.006>.

10. “An Interview with John R. Lott, Jr. Author of More Guns, Less
    Crime: Understanding Crime and Gun Control Laws.” University of
    Chicago Press, 1998. University of Chicago Press.
    <https://press.uchicago.edu/Misc/Chicago/493636.html>.

11. Minnesota House Research, and Ben Johnson, Do criminal laws deter
    crime?: Deterrence theory in criminal justice policy: A Primer §
    (2019).
