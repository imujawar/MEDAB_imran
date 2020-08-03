# plumber_test.R

#* @post /country_data
function() {
  fun_frame <- dget(
  "https://raw.githubusercontent.com/imujawar/MEDAB_imran/master/get_country.R")

framedf <- fun_frame()
  
  df <- framedf %>% mutate(timevar = Sys.time())
  
  return(df)
}
