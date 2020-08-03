# plumber_test.R

#* Return the sum of two numbers
#* @post /country_data
function() {
  fun_frame <- dget(
  "https://raw.githubusercontent.com/cdcent/ITF_Power_BI/master/Rfunctions/get_country.R?token=AEKNWOH5B2AZ2QS3XHC5S627FHWBS")

framedf <- fun_frame()
  
  df <- framedf %>% mutate(timevar = Sys.time())
  
  return(df)
}
