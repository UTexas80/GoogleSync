# Example preprocessing script.  How Do I in R?
# https://tinyurl.com/y9j67lfk

# checkpoint('2015-01-15') ## or any date in YYYY-MM-DD
# format after 2014-09-17 https://tinyurl.com/yddh54gn

# Processing Start Time
start.time      <- Sys.time()
syncFileDate    <- format(Sys.Date(), "%Y%m%d")

osfa_counts_url <- paste(osfa_counts_url, ".csv", sep = syncFileDate)
osfa_funds_url  <- paste(osfa_funds_url, ".csv", sep = syncFileDate)

osfa_counts     <- fread(osfa_counts_url)
gdrive_counts   <- read_sheet(ss = gdrive_dashboard, sheet = "Counts")
print(paste0("gdrive counts = ", "", nrow(gdrive_counts)))

sheets_write(osfa_counts, gdrive_dashboard, sheet = "Counts")

gdrive_counts   <- read_sheet(ss = gdrive_dashboard, sheet = "Counts")
print(paste0("gdrive counts = ", "", nrow(gdrive_counts)))

# VERSION HISTORY
a00.version     <- "1.0.0"
a00.ModDate     <- as.Date("2019-07-01")

# 2019.07.01 - v.1.0.0 1st release
