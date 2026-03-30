source("helper/functions.R")

# unique identifier for each tidbit
# 
# TB_files <- "C:/Users/ptandler/Documents/BurrelCreekProject/Year1_2024/01.Data/01.Selkirk/02.Raw_Data/06.Thermistor/prepared"
# TB_files <- "C:/Users/ptandler/Documents/BurrelCreekProject/Year2_2025/02.Data/01.Selkirk/02.Raw_Data/03.Sensor_Data/03.Tidbits/2025-09-04/prepared"
TB_files <- "C:/Users/ptandler/Documents/BurrelCreekProject/Year2_2025/02.Data/01.Selkirk/02.Raw_Data/03.Sensor_Data/03.Tidbits/2025-11-28/prepared"

TB_lib()

#' enter name or ID and a given time in this format: 07:45:02 or datetime is this format: 2025-09-04 08:13:23
#' the function returns a temperature in the TB csv unit

TB_temp(ID="21688182", time="15:00:00", path = TB_files)

# one plot
TB_plot(name="44F", path = TB_files, datetime_start = "2024-10-10 07:00:00", datetime_end = "2024-10-10 17:30:00", type="l", col = "dodgerblue3")

## multiple plots:
# 10. Oct 2024
tbs <- paste0("44", c("K", "Q", "M", "N", "L", "R", "I"))

# 04. Sept 2025
tbs <- paste0("44", c("H", "K", "Q", "R", "J", "O", "F", "M", "P", "E", "C", "G", "L", "D"))
tbs <- paste0("44", c("R","F", "M"))

# 28. Nov 2025
tbs <- paste0("44", c("E", "J", "F", "C", "M", "B", "H", "D", "K", "Q", "G", "O", "L", "R", "P"))
tbs <- paste0("44", c("C","M", "E", "O"))

for(tb in tbs){
  # TB_plot(name=tb, path = TB_files, datetime_start = "2024-10-10 14:00:00", datetime_end = "2024-10-10 16:15:00", type="l", col = "dodgerblue3")
  # TB_plot(name=tb, path = TB_files, datetime_start = "2025-09-04 06:00:00", datetime_end = "2025-09-04 17:00:00", type="l", col = "dodgerblue3")
  TB_plot(name=tb, path = TB_files, datetime_start = "2025-11-28 09:00:00", datetime_end = "2025-11-28 18:00:00", type="l", col = "dodgerblue3")
  
}


# set path for csv containing for each tidbit location the timestamps 
time_path = "C:/Users/ptandler/Documents/BurrelCreekProject/Year2_2025/02.Data/01.Selkirk/03.Processed_Data/02.H20T/2025-09-04/ChannelHigh_005_006/image_times.csv"
batch_TB_temp(time_path = time_path, tidbit_path = TB_files)


