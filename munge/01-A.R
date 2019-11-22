# Example preprocessing script.
# osfaDashboard <- drive_get("OSFAData")
# drive_get(id= osfaDashboard$id)
 # drive_get(id = "1hhXfl0knpdobx_R28EPG0Q6J72lYCqNv63apFtRkY_M")

drive_get(id = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo")
osfaDashboard<- osfaDashboard %>%drive_update("C:/Users/gfalk/OneDrive - University of Georgia/UGA/Google/Dashboard/OSFA Data.xlsx")

driveCounts <- drive_get(id = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo")
drive_update(driveCounts$id, osfa_counts)

# VERSION HISTORY
a01.version = "1.0.0"
a01.ModDate = as.Date("2019-07-01")
