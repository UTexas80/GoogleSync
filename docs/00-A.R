# Example preprocessing script.  How Do I in R?
# https://tinyurl.com/y9j67lfk

# checkpoint('2015-01-15') ## or any date in YYYY-MM-DD
# format after 2014-09-17 https://tinyurl.com/yddh54gn

# Processing Start Time
start.time = Sys.time()

# osfa_Data   <- read_url(onedrive_url)
gdrive_dashboard <- drive_get(id = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo")

gdrive_url_dashboard_avaya      <- "https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/edit#gid=51489893"
gdrive_url_dashboard_counts     <- "https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/edit#gid=609577956"
gdrive_url_dashboard_emails     <- "https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/edit#gid=834713523"
gdrive_url_dashboard_fund       <- "https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/edit#gid=1525199932"
gdrive_url_dashboard_info       <- "https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/edit#gid=0"
gdrive_url_dashboard_outreach   <- "https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/edit#gid=510123201"
gdrive_url_dashboard_training   <- "https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/edit#gid=633150817"


# "https://docs.google.com/spreadsheets/d/e/2PACX-1vRThAlCxUUbIqsI8boOlzQDW8VmLoYsa2yUvecBGJByk8zRIMUvQN6oRrltxHgzw5tGQQuhgy4ic2xF/pub?gid=609577956&single=true&output=csv"
# https://docs.google.com/spreadsheets/d/e/2PACX-1vRThAlCxUUbIqsI8boOlzQDW8VmLoYsa2yUvecBGJByk8zRIMUvQN6oRrltxHgzw5tGQQuhgy4ic2xF/pub?gid=609577956&single=true&output=csv
# https://docs.google.com/spreadsheets/d/1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo/export?format=xlsx&id=1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo
# https://docs.google.com/spreadsheets/d/e/2PACX-1vRThAlCxUUbIqsI8boOlzQDW8VmLoYsa2yUvecBGJByk8zRIMUvQN6oRrltxHgzw5tGQQuhgy4ic2xF/pubhtml?gid=609577956&single=true

onedrive_emails     <- "https://excel.officeapps.live.com/x/_layouts/XlFileHandler.aspx?WacUserType=WOPI&usid=e8f60540-464d-43d2-9da7-89e881ffa84e&NoAuth=1&waccluster=US4"

# syncFileDate      <-  gsub("-", "", Sys.Date())
syncFileDate        <- '20200131'

osfa_counts_url     <- "http://apps.osfa.uga.edu/decrypt.php?path=Banner/Argos/Dashboard_Data/OSFA%20Counts_"
osfa_funds_url      <- "http://apps.osfa.uga.edu/decrypt.php?path=Banner/Argos/Dashboard_Data/OSFA%20Funds_"
osfa_counts_url     <- paste(osfa_counts_url, ".csv", sep = syncFileDate)
osfa_funds_url      <- paste(osfa_funds_url,".csv", sep = syncFileDate)

osfa_counts         <- fread(osfa_counts_url)
gdrive_counts       <- read_sheet(ss = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo", sheet = "Counts")
print(paste0("gdrive counts = ", "", nrow(gdrive_counts)))

sheets_write(osfa_counts, gdrive_dashboard, sheet = "Counts")

gdrive_count        <- read_sheet(ss = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo", sheet = "Counts")
print(paste0("gdrive counts = ", "", nrow(gdrive_counts)))

# VERSION HISTORY
a00.version         <- "1.0.0"
a00.ModDate         <- as.Date("2019-07-01")

# 2019.07.01 - v.1.0.0 1st release
