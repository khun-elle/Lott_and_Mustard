load.libraries <- c('did', 'tidyverse', 'haven', 'fixest', 'skimr', 'kableExtra', 'stargazer', 'foreign', 'sjPlot', 'sjmisc', 'sjlabelled', 'bacondecomp', 'jpeg', 'png')
install.lib <- load.libraries[!load.libraries %in% installed.packages()]
for(libs in install.lib) install.packages(libs, dependences = TRUE)
sapply(load.libraries, require, character = TRUE)

StateLevelData <- read_dta("/Users/jirapat/Desktop/STATA/Causal/UpdatedStateLevelData-2010.dta") %>% filter(year >= 1977 & year <= 1992)

#skim(StateLevelData)

#convert shalll dummies to factor
#StateLevelData$shalll<- as.factor(StateLevelData$shalll)

#rename variables
LM <- StateLevelData %>% select(fipsstat:year,
                                shalll,
                                Violent_Crime_Rate = ratvio,
                                Murder_Rate = ratmur,
                                Rape_Rate = ratrap,
                                Aggravate_Assult_Rate = rataga,
                                Robbery_Rate = ratrob,
                                Property_Crime_Rate = ratpro,
                                Auto_Theft_Rate = rataut,
                                Burglary_Rate = ratbur,
                                Larceny_Rate = ratlar,
                                Arrest_Rate_for_Violent_Crime = aovio,
                                Arrest_Rate_for_Murder = aomur,
                                Arrest_Rate_for_Rape = aorap,
                                Arrest_Rate_for_Robbery = aorob,
                                Arrest_Rate_for_Aggravated_Assault = aoaga,
                                Arrest_Rate_for_Property_Crimes = aopro,
                                Arrest_Rate_for_Burglary = aobur,
                                Arrest_Rate_for_Larceny = aolar,
                                Arrest_Rate_for_Auto_Theft = aoaut,
                                Arrest_Rate_for_Violent_Crimes = aovio,
                                RPC_Personal_Income = rpcpi,
                                RPC_Unemployment_Insurance = rpcui,
                                RPC_Income_Maintenance = rpcim,
                                RPC_retirement_pmt = rpcrpo,
                                everything()) %>% 
  mutate(across(Violent_Crime_Rate:Larceny_Rate, 
                .fns = list(log = ~log(.x)), 
                .names = "{.fn}.{.col}")) %>% 
  select(-c(starts_with("yr"), ends_with("rr"))) %>% as_tibble()

#rollout
rollout <- LM %>% 
  select(state:shalll) %>% 
  mutate(yearXshalll = year * shalll) %>% 
  group_by(state) 

rollout <- rollout[rollout$shalll != 0, ] 
rollout <- rollout[match(unique(rollout$state), rollout$state),]  %>% 
  select(state, yearXshalll) %>% 
  rename(year_first_treated = yearXshalll) %>% 
  as_tibble() %>% 
  arrange(year_first_treated)

kbl(rollout, col.names = c("State", "Year First Treated"), caption = "**Table 1: A Table of Rollout State By State", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

#table 1
stats <- list(
  mean = ~mean(.x, na.rm = TRUE),
  standard_deviation = ~sd(.x, na.rm = TRUE)
)

t1 <- LM %>% select(state, Violent_Crime_Rate:Arrest_Rate_for_Violent_Crimes) %>%
  group_by(state) %>% 
  summarise(across(c(Violent_Crime_Rate:Arrest_Rate_for_Violent_Crimes), 
                   stats), .names = "{.fn}.{.col}") %>%
  ungroup() %>% 
  tibble::as_tibble() %>% 
  summarise(across(ends_with("_mean"), 
                   ~ sd(.x, na.rm = TRUE), .names = "standard_deviation_of_{.col}"),
            across(ends_with("_standard_deviation"),
                   ~ mean(.x, na.rm = TRUE), .names = "mean_of_{.col}"))%>% t()%>% 
  round(2) %>% 
  as.data.frame() %>% 
  rownames_to_column() %>% 
  rename(variable = rowname, value = V1) %>%
  separate(col = variable, into = c("Stats", "Variables"), sep = "_of_") %>% 
  
  pivot_wider(names_from = Stats, values_from = value, values_fill = 0) %>%
  rename(c(Std_of_State_Mean = standard_deviation, Mean_of_State_Std = mean)) 

#shift the values of the last column up
shift <- function(x, n){
  c(x[-(seq(n))], rep(NA, n))
}

t1$Mean_of_State_Std <- shift(t1$Mean_of_State_Std, 19)
t1 <- t1[1:19, ]
t1$Variables=gsub("_mean", "", t1$Variables)

t1 %>% 
  mutate(Variables = str_replace_all(Variables, "_", " ")) %>%
  kbl(caption = "Table 1",
      col.names = c("Variable",
                    "Standard Deviation of State Means",
                    "Mean of Within-State Standard Deviations"),
      booktabs = T
  ) %>% 
  kable_styling(latex_options = c("striped", "HOLD_position"))

#table 2
stats_2 <- list(
  Obs = ~sum(!is.na(.x)),
  mean = ~mean(.x, na.rm = TRUE),
  standard_deviation = ~sd(.x, na.rm = TRUE)
)

t2 <- LM %>% select(shalll:RPC_retirement_pmt) %>% 
  summarise(across(c(shalll:RPC_retirement_pmt), 
                   stats_2, .names = "{.fn}.{.col}")) %>% 
  tibble::as_tibble() %>% 
  t()%>% 
  round(5) %>% 
  as.data.frame() %>% 
  rownames_to_column() %>%  
  rename(variable = rowname, value = V1) %>%
  separate(col = variable, into = c("Stats", "Variables"), sep = "\\.") %>% 
  pivot_wider(names_from = Variables, values_from = value, values_fill = 0) %>% 
  t() %>%
  as.data.frame() %>% 
  rownames_to_column() %>% 
  janitor::row_to_names(row_number = 1)

t2$Obs <- as.integer(t2$Obs)
t2$mean <- as.numeric(t2$mean)
t2$standard_deviation <- as.numeric(t2$standard_deviation)

t2 <- t2 %>% mutate(Stats = str_replace_all(Stats, "_", " "),
                    Stats = str_to_title(Stats))

row.names(t2) <- NULL

t2 %>% 
  kbl(caption = "Table 2: Summary Statistics for Various Crime Outcomes and Demographics Variables",
      col.names = c("Variable",
                    "Obs",
                    "Mean",
                    "Std Dev."),
      booktabs = T
  ) %>% 
  kable_styling(latex_options = c("striped", "HOLD_position"))

#table 2 cont.
LM %>% select(shalll, starts_with("Arrest_Rate_"), Violent_Crime_Rate:Larceny_Rate, starts_with("RPC_"), starts_with("pp")) %>% 
  summarise(across(everything(), 
                   stats_2, .names = "{.fn}.{.col}")) %>% 
  tibble::as_tibble() %>% 
  t()%>% 
  round(5) %>% 
  as.data.frame() %>% 
  rownames_to_column() %>%  
  rename(variable = rowname, value = V1) %>% 
  separate(col = variable, into = c("Stats", "Variables"), sep = "\\.") %>% 
  pivot_wider(names_from = Stats, values_from = value, values_fill = 0) %>%
  as.data.frame() %>% 
  slice(25:67) %>%
  mutate(Variables = recode(Variables, 
                            ppwm1019 = 'White Male Between 10-19',
                            ppbm1019 = 'Black Male Between 10-19',
                            ppnm1019 = 'Other Male Between 10-19',
                            ppwf1019 = 'White Female Between 10-19',
                            ppbf1019 = 'Black Female Between 10-19',
                            ppnf1019 = 'Other Female Between 10-19',
                            ppwm2029 = 'White Male Between 20-29',
                            ppbm2029 = 'Black Male Between 20-29',
                            ppnm2029 = 'Other Male Between 20-29',
                            ppwf2029 = 'White Female Between 20-29',
                            ppbf2029 = 'Black Female Between 20-29',
                            ppnf2029 = 'Other Female Between 20-29',
                            ppwm3039 = 'White Male Between 30-39',
                            ppbm3039 = 'Black Male Between 30-39',
                            ppnm3039 = 'Other Male Between 30-39',
                            ppwf3039 = 'White Female Between 30-39',
                            ppbf3039 = 'Black Female Between 30-39',
                            ppnf3039 = 'Other Female Between 30-39',
                            ppwm4049 = 'White Male Between 40-49',
                            ppbm4049 = 'Black Male Between 40-49',
                            ppnm4049 = 'Other Male Between 40-49',
                            ppwf4049 = 'White Female Between 40-49',
                            ppbf4049 = 'Black Female Between 40-49',
                            ppnf4049 = 'Other Female Between 40-49',
                            ppwm5064 = 'White Male Between 50-64',
                            ppbm5064 = 'Black Male Between 50-64',
                            ppnm5064 = 'Other Male Between 50-64',
                            ppwf5064 = 'White Female Between 50-64',
                            ppbf5064 = 'Black Female Between 50-64',
                            ppnf5064 = 'Other Female Between 50-64',
                            ppwm65o = 'White Male Over 65',
                            ppbm65o = 'Black Male Over 65',
                            ppnm65o = 'Other Male Over 65',
                            ppwf65o = 'White Female Over 65',
                            ppbf65o = 'Black Female Over 65',
                            ppnf65o = 'Other Female Over 65')) %>% 
  slice(-(1:7)) %>% 
  kbl(caption = "Table 2 Cont.",
      col.names = c("Variable",
                    "Obs",
                    "Mean",
                    "Std Dev."),
      booktabs = T
  ) %>% 
  kable_styling(latex_options = c("striped", "HOLD_position"))

#table 3
ln_crime_rate <- LM %>% select(starts_with("log."))

fe <- LM %>% select(state, year)

shall <- LM %>% select(shalll)

arrest_rates <- LM %>% select(Arrest_Rate_for_Violent_Crime:Arrest_Rate_for_Auto_Theft)

independent_variables <- LM %>% select(starts_with("RPC_"), ppwm1019:ppnf65o, density, popstate)

regression <- list()

for (i in 1:9) {
  df <- cbind(ln_crime_rate[,i], shall, arrest_rates[,i], independent_variables, fe)
  
  dependent_variable <- colnames(df)[1]
  colnames(df)[3] <- "Its_corresponding_Arrest_Rate"
  X <- colnames(df)[2:45] %>% 
    paste(.,collapse = " + ")
  two_ways_fixed_effect <- colnames(df)[46:47] %>% 
    paste(., collapse = " + ")
  
  formula <- as.formula(paste(dependent_variable, " ~ ", X, " | ", two_ways_fixed_effect, sep=""))
  
  mdl <- feols(fml = formula, data = df, vcov = "HC1")
  
  regression[[dependent_variable]] <- mdl
}

tab_model(regression[1:3], 
          show.ci = FALSE, 
          show.se = TRUE, 
          show.p = FALSE,
          show.intercept = TRUE,
          digits = 5,
          dv.labels = c("Log Violent Crime Rate", "Log Murder Rate", "Log Rape Rate"))

tab_model(regression[4:6], 
          show.ci = FALSE, 
          show.se = TRUE, 
          show.p = FALSE, 
          show.intercept = TRUE,
          digits = 5,
          dv.labels = c("Log Aggravate Assult Rate", "Log Robbery Rate", "Log Property Crime Rate"))

tab_model(regression[7:9], 
          show.ci = FALSE, 
          show.se = TRUE, 
          show.p = FALSE, 
          show.intercept = TRUE,
          digits = 5,
          dv.labels = c("Log Auto Theft Rate", "Log Burglary Rate", "Log Larceny Rate"))

#Bacon Decomposition without controls
data_for_bacon <- LM %>% select(state:shalll, starts_with("log."))

#when y = log.Violent_Crime_Rate
df_bacon1 <- bacon(log.Violent_Crime_Rate ~ shalll,
                  data = data_for_bacon,
                  id_var = "state",
                  time_var = "year",
                  quietly = TRUE) %>%   
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate))
            

kbl(df_bacon1, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Violent Crime Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon1 <- sum(df_bacon1$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon1, 4)))

fit_tw1 <- lm(log.Violent_Crime_Rate ~ shalll + factor(state) + factor(year),
             data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw1$coefficients[2], 4)))

#when y = log.Murder_Rate
df_bacon2 <- bacon(log.Murder_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate))

kbl(df_bacon2, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Murder Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon2 <- sum(df_bacon2$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon2, 4)))

fit_tw2 <- lm(log.Murder_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw2$coefficients[2], 4)))

#when y = log.Rape_Rate
df_bacon3 <- bacon(log.Rape_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate))

kbl(df_bacon3, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Rape Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon3 <- sum(df_bacon3$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon3, 4)))

fit_tw3 <- lm(log.Rape_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw3$coefficients[2], 4)))

#when y = log.Aggravate_Assult_Rate
df_bacon4 <- bacon(log.Aggravate_Assult_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate))

kbl(df_bacon4, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Aggravate Assault Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon4 <- sum(df_bacon4$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon4, 4)))

fit_tw4 <- lm(log.Aggravate_Assult_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw4$coefficients[2], 4)))

#when y = log.Robbery_Rate
df_bacon5 <- bacon(log.Robbery_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate))

kbl(df_bacon5, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Robbery Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon5 <- sum(df_bacon5$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon5, 4)))

fit_tw5 <- lm(log.Robbery_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw5$coefficients[2], 4)))

#when y = log.Property_Crime_Rate
df_bacon6 <- bacon(log.Property_Crime_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate))

kbl(df_bacon6, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Property Crime Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon6 <- sum(df_bacon6$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon6, 4)))

fit_tw6 <- lm(log.Property_Crime_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw6$coefficients[2], 4)))

#when y = log.Auto_Theft_Rate
df_bacon7 <- bacon(log.Auto_Theft_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate)) 

kbl(df_bacon7, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Auto Theft Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon7 <- sum(df_bacon7$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon7, 4)))

fit_tw7 <- lm(log.Auto_Theft_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw7$coefficients[2], 4)))

#when y = log.Burglary_Rate
df_bacon8 <- bacon(log.Burglary_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate)) 

kbl(df_bacon8, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Burglary Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon8 <- sum(df_bacon8$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon8, 4)))

fit_tw8 <- lm(log.Burglary_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw8$coefficients[2], 4)))

#when y = log.Larceny_Rate
df_bacon9 <- bacon(log.Larceny_Rate ~ shalll,
                   data = data_for_bacon,
                   id_var = "state",
                   time_var = "year",
                   quietly = TRUE) %>% 
  mutate(weighted_estimate = estimate * weight) %>% 
  group_by(type) %>%
  summarise(weights = sum(weight),
            average_DID_estimate = mean(estimate),
            weighted_estimate = sum(weighted_estimate))

kbl(df_bacon1, col.names = c("Type", "Weights", "Average DID Estimate", "Weighted Estimate"), caption = "**Bacon Decomposition: Log Larceny Rate**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

coef_bacon9 <- sum(df_bacon9$weighted_estimate)

print(paste("Weighted sum of decomposition =", round(coef_bacon9, 4)))

fit_tw9 <- lm(log.Larceny_Rate ~ shalll + factor(state) + factor(year), 
              data = data_for_bacon)

print(paste("Two-way FE estimate =", round(fit_tw9$coefficients[2], 4)))

#Callaway & Sant'anna, Sun & Abraham
cs_data <- LM %>% select(fipsstat:shalll,
                         starts_with("log."),
                         starts_with("Arrest_Rate_")) %>% 
  group_by(fipsstat) %>% 
  mutate(treated = ifelse(sum(shalll) > 0, 1, 0)) %>% 
  ungroup() 

year_treated_for_each_state <- cs_data %>% 
  select(fipsstat:shalll) %>% 
  mutate(is_treated = year * shalll) %>% 
  group_by(fipsstat, shalll) %>% 
  summarise(year_treated = min(is_treated)) %>% 
  ungroup() 

year_treated_for_each_state <- year_treated_for_each_state[year_treated_for_each_state$shalll != 0, ] 

cs_data <- merge(x = cs_data, y = year_treated_for_each_state, by = "fipsstat", all.x = TRUE)

cs_data[is.na(cs_data)] = 0

cs_data <- cs_data[ , -which(names(cs_data) %in% c("state.y", "year.y", "shalll.y", "shalll.x", "treated", "shalll.x.1", "year_treated.y", "year_treated.x"))]

cs_data <- cs_data %>% select(fipsstat:year,
                              year_treated,
                              starts_with("log."),
                              Arrest_Rate_for_Violent_Crime,
                              Arrest_Rate_for_Murder,
                              Arrest_Rate_for_Rape,
                              Arrest_Rate_for_Aggravated_Assault,
                              Arrest_Rate_for_Robbery,
                              Arrest_Rate_for_Property_Crimes,
                              Arrest_Rate_for_Auto_Theft,
                              Arrest_Rate_for_Burglary,
                              Arrest_Rate_for_Larceny)

# objects <- c("cs_type_group", "cs_type_dynamic", "sa")
# 
# objectlist <- setNames(vector(length(objects), mode="list"), objects)

l1 <- c()
l2 <- c()
l3 <- c()

dependent_vars <- cs_data %>% select(starts_with("log.")) %>% names()
independent_vars <- cs_data %>% select(starts_with("Arrest_Rate_")) %>% names()

for (n in 1:9){
  y <- dependent_vars[n]
  x <- independent_vars[n]
  rhs <- as.formula(paste('~', x))
  atts <- att_gt(yname = y, # LHS variable
                 tname = 'year', # panel time variable
                 idname = 'fipsstat', # firms' panel id variable
                 gname = 'year_treated', 
                 data = cs_data, # data
                 xformla = rhs,
                 est_method = "dr",
                 control_group = "notyettreated",
                 bstrap = TRUE, # if TRUE compute bootstrapped SE
                 biters = 1000, # number of bootstrap iterations
                 print_details = FALSE, # if TRUE, print detailed results
                 clustervars = 'fipsstat', # cluster level
                 panel = TRUE)
  agg_effects <- aggte(atts, type = "group", balance_e = TRUE, na.rm = TRUE)
  # summary(agg_effects)
  # l1 <- c(l1, agg_effects)
  # l2 <- c(l2, c(agg_effects$overall.att, agg_effects$overall.se))
  l1[[y]] <- agg_effects
  l2[[y]] <- c(agg_effects$overall.att, agg_effects$overall.se)
  
  sun_abbraham <- paste(y, '~', x, " + sunab(year_treated, year) | fipsstat + year") %>%
    as.formula()
  sun_abbraham_reg <- feols(fml = sun_abbraham, data = cs_data)
  # l3 <- c(l3, sun_abbraham_reg)
  l3[[y]] <- sun_abbraham_reg
}

l2 <- l2 %>% as.data.frame() %>%t() 

# l2_estimates <- l2[seq(1, nrow(l2), 2), ] %>% as.data.frame()
# l2_se <- l2[seq(2, nrow(l2), 2), ] %>% as.data.frame()
# types_of_crimes <- dependent_vars %>% as.data.frame()
# cs_table <- cbind(types_of_crimes, l2_estimates, l2_se)

kable(l2, col.names = c("Overall ATTs", "Overall SEs"), caption = "**Table 4 Callaway and Sant’anna Overall ATTs and Standard Errors**", format_caption = c("italic", "underline")) %>%
  kable_styling(bootstrap_options = "striped", full_width = F)

# Sun and Abraham event study
for (i in 1:9) {
  y <- dependent_vars[i]
  file_name <- paste0(y, ".jpeg")
  jpeg(filename = file_name, width = 960, height = 480)
  iplot(l3[[y]], ref.line = -1, main = "")
  dev.off()
}

library(jpeg)
myurl <- "https://github.com/khun-elle/Lott_and_Mustard/blob/main/figures/log.Rape_Rate.jpeg"
z <- tempfile()
download.file(myurl, z, mode="wb")
pic <- readJPEG(z)
file.remove(z) # cleanup