
### Install and load all libraries 
if (!require("easypackages")) install.packages('easypackages')
packages("data.table","devtools","dplyr","DT","ggplot2","gridExtra","knitr",
         "rmarkdown","plotly","treemap","reshape2","visNetwork","rmdformats","ggrepel",
         "flexdashboard",
         prompt = F)

### network name
Net.Name = "NetworkName" 

### data model
data.model = "PCORnet v.3" ##this is built based on PCORnet v.3 CDM
cdm = "PCORNET3"




# primary key for population countcount
pop.key = "patid"

sites = c("enter site 1","enter site 2","enter site n")

for (k in 1:length(sites)) {
#site
site = sites[k] #network will generate network-wise report
## then generate the html report
rmarkdown::render("DQe_c_Dash.Rmd", output_file = paste0(getwd(),"/Dash.reports/",site,Sys.Date(),".html")) 
}




