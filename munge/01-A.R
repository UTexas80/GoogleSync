# Example preprocessing script.
# osfaDashboard <- drive_get("OSFAData")
# drive_get(id= osfaDashboard$id)
# drive_get(id = "1hhXfl0knpdobx_R28EPG0Q6J72lYCqNv63apFtRkY_M")

# drive_get(id = "1j-8lMqz88S4yWqApEQoRnK3tKULme-MEeiejX5fHGMo")
# osfaDashboard <- osfaDashboard %>%drive_update(osfaData)
drive_get("1vRThAlCxUUbIqsI8boOlzQDW8VmLoYsa2yUvecBGJByk8zRIMUvQN6oRrltxHgzw5tGQQuhgy4ic2xF")

drive_update(driveCounts$id, osfa_counts)



library(RJSONIO)
sskey='0AmbQbL4Lrd61dDBfNEFqX1BGVDk0Mm1MNXFRUnBLNXc'
ssURL=paste( sep="", 'http://spreadsheets.google.com/feeds/worksheets/', sskey, '/public/basic?alt=json' )
spreadsheet=fromJSON(ssURL)
sheets=c()
for (el in spreadsheet$feed$entry) sheets=c(sheets,el$title['$t'])
as.data.frame(sheets)

# VERSION HISTORY
a01.version = "1.0.0"
a01.ModDate = as.Date("2019-07-01")
