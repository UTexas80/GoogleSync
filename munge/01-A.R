# Example preprocessing script.
osfaDashboard <- drive_get("OSFAData")
drive_get(id = "1hhXfl0knpdobx_R28EPG0Q6J72lYCqNv63apFtRkY_M")
drive_get(id= osfaDashboard$id)

osfaDashboard<- osfaDashboard %>%drive_update("C:/Users/gfalk/OneDrive - University of Georgia/UGA/Google/Dashboard/OSFA_Data.xlsx")

# VERSION HISTORY
a01.version = "1.0.0"
a01.ModDate = as.Date("2019-07-01")