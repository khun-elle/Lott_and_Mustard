load.libraries <- c('did', 'tidyverse', 'haven', 'fixest', 'skimr', 'kableExtra', 'stargazer', 'foreign')
install.lib <- load.libraries[!load.libraries %in% installed.packages()]
for(libs in install.lib) install.packages(libs, dependences = TRUE)
sapply(load.libraries, require, character = TRUE)

StateLevelData <- read_dta("/Users/jirapat/Desktop/STATA/Causal/UpdatedStateLevelData-2010.dta") %>% filter(year >= 1977 & year <= 1992)

skim(StateLevelData)

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
    Obs = length,
    mean = ~mean(.x, na.rm = TRUE),
    standard_deviation = ~sd(.x, na.rm = TRUE)
)

LM %>% select(shalll:RPC_retirement_pmt) %>% 
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
    janitor::row_to_names(row_number = 1) %>% 
    View()



