 air_pollution_tidy <- read.csv("C:/Users/Mairaj ali/Downloads/archive/Tidy Dataset/air_pollution_tidy.csv", header=FALSE)
>   View(air_pollution_tidy)
> colnames(air_pollution_tidy) ->c("v1","site","date","pm25","pm10","so2","co","Ozone","year","month","dates")
Error in c("v1", "site", "date", "pm25", "pm10", "so2", "co", "Ozone",  : 
  target of assignment expands to non-language object
> colnames(air_pollution_tidy) <-c("v1","site","date","pm25","pm10","so2","co","Ozone","year","month","dates")
> view(air_pollution_tidy)
Error in view(air_pollution_tidy) : could not find function "view"
>  View(air_pollution_tidy)
> clean -> drop_na(air_pollution_tidy)
Error: object 'clean' not found
> library(tidyr)
> clean <- drop_na(air_pollution_tidy)
> View(clean)
> str(clean)
'data.frame':	1748 obs. of  11 variables:
 $ v1   : int  1 2 3 4 5 6 7 8 9 10 ...
 $ site : chr  "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" ...
 $ date : chr  "01-Jan-2016" "03-Jan-2016" "05-Jan-2016" "07-Jan-2016" ...
 $ pm25 : chr  "360.81" "341.32" "433.35" "468.02" ...
 $ pm10 : chr  "750.91" "651.71" "847.84" "743.11" ...
 $ so2  : chr  "33.15" "22.83" "38.65" "34.02" ...
 $ co   : chr  "3.13" "2.57" "3.58" "3.39" ...
 $ Ozone: chr  "14.74" "15.67" "32.07" "27.8" ...
 $ year : chr  "2016" "2016" "2016" "2016" ...
 $ month: chr  "Jan" "Jan" "Jan" "Jan" ...
 $ dates: chr  "1" "3" "5" "7" ...
> clean$date<-as.factor(clean$date)
> clean$pm25<-as.factor(clean$pm25)
> clean$pm25<-as.integer(clean$pm25)
> clean$pm10<-as.integer(clean$pm10)
> clean$so2<-as.integer(clean$so2)
> clean$co<-as.integer(clean$co)
> clean$Ozone<-as.integer(clean$Ozone)
> clean$year<-as.integer(clean$year)
> clean$dates<-as.integer(clean$dates)
> str(clean)
'data.frame':	1748 obs. of  11 variables:
 $ v1   : int  1 2 3 4 5 6 7 8 9 10 ...
 $ site : chr  "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" ...
 $ date : Factor w/ 804 levels "01-Apr-2017",..: 11 63 116 169 224 277 329 381 434 490 ...
 $ pm25 : int  980 938 1103 1155 407 1078 872 471 536 892 ...
 $ pm10 : int  750 651 847 743 480 681 510 345 387 566 ...
 $ so2  : int  33 22 38 34 16 22 16 13 20 13 ...
 $ co   : int  3 2 3 3 2 3 1 1 1 1 ...
 $ Ozone: int  14 15 32 27 14 46 14 10 15 9 ...
 $ year : int  2016 2016 2016 2016 2016 2016 2016 2016 2016 2016 ...
 $ month: chr  "Jan" "Jan" "Jan" "Jan" ...
 $ dates: int  1 3 5 7 9 11 13 15 17 19 ...
> clean$month<-as.factor(clean$month)
> str(clea\)
Error: unexpected '\\' in "str(clea\"
> str(clean)
'data.frame':	1748 obs. of  11 variables:
 $ v1   : int  1 2 3 4 5 6 7 8 9 10 ...
 $ site : chr  "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" ...
 $ date : Factor w/ 804 levels "01-Apr-2017",..: 11 63 116 169 224 277 329 381 434 490 ...
 $ pm25 : int  980 938 1103 1155 407 1078 872 471 536 892 ...
 $ pm10 : int  750 651 847 743 480 681 510 345 387 566 ...
 $ so2  : int  33 22 38 34 16 22 16 13 20 13 ...
 $ co   : int  3 2 3 3 2 3 1 1 1 1 ...
 $ Ozone: int  14 15 32 27 14 46 14 10 15 9 ...
 $ year : int  2016 2016 2016 2016 2016 2016 2016 2016 2016 2016 ...
 $ month: Factor w/ 12 levels "Apr","Aug","Dec",..: 5 5 5 5 5 5 5 5 5 5 ...
 $ dates: int  1 3 5 7 9 11 13 15 17 19 ...
> x <-mean(clean$Ozone)
> clean$Quality <-as.factor(ifelse(clean$Ozone>x,"bad","good"))
> str(clean)
'data.frame':	1748 obs. of  12 variables:
 $ v1     : int  1 2 3 4 5 6 7 8 9 10 ...
 $ site   : chr  "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" "Anand Vihar, Delhi - DPCC" ...
 $ date   : Factor w/ 804 levels "01-Apr-2017",..: 11 63 116 169 224 277 329 381 434 490 ...
 $ pm25   : int  980 938 1103 1155 407 1078 872 471 536 892 ...
 $ pm10   : int  750 651 847 743 480 681 510 345 387 566 ...
 $ so2    : int  33 22 38 34 16 22 16 13 20 13 ...
 $ co     : int  3 2 3 3 2 3 1 1 1 1 ...
 $ Ozone  : int  14 15 32 27 14 46 14 10 15 9 ...
 $ year   : int  2016 2016 2016 2016 2016 2016 2016 2016 2016 2016 ...
 $ month  : Factor w/ 12 levels "Apr","Aug","Dec",..: 5 5 5 5 5 5 5 5 5 5 ...
 $ dates  : int  1 3 5 7 9 11 13 15 17 19 ...
 $ Quality: Factor w/ 2 levels "bad","good": 2 2 2 2 2 1 2 2 2 2 ...
> #create model using lm
> model <-lm(Ozone~pm25+pm10+so2,data = clean)
> summary(model)

Call:
lm(formula = Ozone ~ pm25 + pm10 + so2, data = clean)

Residuals:
    Min      1Q  Median      3Q     Max 
-41.017 -16.324  -4.241  13.131 131.020 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 36.696462   1.583694  23.171  < 2e-16 ***
pm25         0.004549   0.001103   4.124 3.90e-05 ***
pm10        -0.025801   0.003442  -7.496 1.04e-13 ***
so2          0.332692   0.056358   5.903 4.27e-09 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 22.07 on 1744 degrees of freedom
Multiple R-squared:  0.04926,	Adjusted R-squared:  0.04762 
F-statistic: 30.12 on 3 and 1744 DF,  p-value: < 2.2e-16

> model <-lm(Ozone~pm10+so2,data = clean)
> summary(model)

Call:
lm(formula = Ozone ~ pm10 + so2, data = clean)

Residuals:
    Min      1Q  Median      3Q     Max 
-39.859 -16.388  -4.496  13.163 131.022 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 41.274538   1.134561  36.379  < 2e-16 ***
pm10        -0.027691   0.003427  -8.080 1.19e-15 ***
so2          0.320481   0.056537   5.668 1.68e-08 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 22.17 on 1745 degrees of freedom
Multiple R-squared:  0.03999,	Adjusted R-squared:  0.03889 
F-statistic: 36.34 on 2 and 1745 DF,  p-value: 3.445e-16

> model <-lm(Ozone~pm10,data = clean)
> summary(model)

Call:
lm(formula = Ozone ~ pm10, data = clean)

Residuals:
    Min      1Q  Median      3Q     Max 
-38.368 -16.248  -4.576  13.073 133.508 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 43.757167   1.055908  41.440  < 2e-16 ***
pm10        -0.020075   0.003181  -6.312 3.49e-10 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 22.37 on 1746 degrees of freedom
Multiple R-squared:  0.02231,	Adjusted R-squared:  0.02175 
F-statistic: 39.84 on 1 and 1746 DF,  p-value: 3.487e-10

> model <-lm(Ozone~pm25+pm10+so2+co,data = clean)
> sumary(model)
Error in sumary(model) : could not find function "sumary"
> summary(model)

Call:
lm(formula = Ozone ~ pm25 + pm10 + so2 + co, data = clean)

Residuals:
    Min      1Q  Median      3Q     Max 
-41.014 -15.874  -4.059  12.539 129.403 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)    
(Intercept) 37.396088   1.563304  23.921  < 2e-16 ***
pm25         0.004137   0.001088   3.801 0.000149 ***
pm10        -0.013259   0.003800  -3.489 0.000496 ***
so2          0.362819   0.055681   6.516 9.42e-11 ***
co          -3.341698   0.456811  -7.315 3.90e-13 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 21.75 on 1743 degrees of freedom
Multiple R-squared:  0.07758,	Adjusted R-squared:  0.07546 
F-statistic: 36.65 on 4 and 1743 DF,  p-value: < 2.2e-16

> plot(month,Ozone)
Error in plot(month, Ozone) : object 'month' not found
> plot(Ozone,month.abb)
Error in plot(Ozone, month.abb) : object 'Ozone' not found
> plot(clean$Ozone,clean$month)
> plot(clean$month,clean$Ozone)
> plot.window(clean$month,clean$Ozone)
Error in plot.window(clean$month, clean$Ozone) : invalid 'xlim' value
> plot(clean$year,clean$Ozone)
> plot(clean$year,clean$pm10)
> plot(clean$year,clean$Ozne)
> plot(clean$year,clean$Ozne)
> plot(clean$Ozone,clean$year)
> plot(clean$year,clean$Ozone)
> #drawing ggplot2
> ggplot(clean,aes(year,Ozone))+geom(size=3)+geom_line()
Error in ggplot(clean, aes(year, Ozone)) : 
  could not find function "ggplot"
> install.packages("tidyverse")
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/src/contrib:
  cannot open URL 'https://cran.rstudio.com/src/contrib/PACKAGES'
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Mairaj ali/OneDrive/Documents/R/win-library/4.1’
(as ‘lib’ is unspecified)
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/src/contrib:
  cannot open URL 'https://cran.rstudio.com/src/contrib/PACKAGES'
Warning in install.packages :
  package ‘tidyverse’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
Warning in install.packages :
  unable to access index for repository https://cran.rstudio.com/bin/windows/contrib/4.1:
  cannot open URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/PACKAGES'
> library(tidyverse)
Error in library(tidyverse) : there is no package called ‘tidyverse’
> library(rgdal)
Error in library(rgdal) : there is no package called ‘rgdal’
> install.packages("tidyverse")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Installing package into ‘C:/Users/Mairaj ali/OneDrive/Documents/R/win-library/4.1’
(as ‘lib’ is unspecified)
also installing the dependencies ‘colorspace’, ‘sys’, ‘bit’, ‘ps’, ‘sass’, ‘base64enc’, ‘fastmap’, ‘rappdirs’, ‘rematch’, ‘farver’, ‘labeling’, ‘munsell’, ‘RColorBrewer’, ‘viridisLite’, ‘askpass’, ‘bit64’, ‘prettyunits’, ‘processx’, ‘evaluate’, ‘highr’, ‘yaml’, ‘xfun’, ‘bslib’, ‘htmltools’, ‘jquerylib’, ‘tinytex’, ‘backports’, ‘assertthat’, ‘blob’, ‘DBI’, ‘withr’, ‘data.table’, ‘gargle’, ‘uuid’, ‘cellranger’, ‘curl’, ‘ids’, ‘rematch2’, ‘digest’, ‘gtable’, ‘isoband’, ‘scales’, ‘mime’, ‘openssl’, ‘clipr’, ‘vroom’, ‘tzdb’, ‘progress’, ‘callr’, ‘fs’, ‘knitr’, ‘rmarkdown’, ‘selectr’, ‘stringi’, ‘broom’, ‘dbplyr’, ‘dtplyr’, ‘forcats’, ‘googledrive’, ‘googlesheets4’, ‘ggplot2’, ‘haven’, ‘hms’, ‘httr’, ‘jsonlite’, ‘lubridate’, ‘modelr’, ‘readr’, ‘readxl’, ‘reprex’, ‘rstudioapi’, ‘rvest’, ‘stringr’, ‘xml2’


  There is a binary version available but the source version is later:
     binary source needs_compilation
blob  1.2.2  1.2.3             FALSE

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/colorspace_2.0-3.zip'
Content type 'application/zip' length 2651056 bytes (2.5 MB)
downloaded 2.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/sys_3.4.zip'
Content type 'application/zip' length 59863 bytes (58 KB)
downloaded 58 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/bit_4.0.4.zip'
Content type 'application/zip' length 640777 bytes (625 KB)
downloaded 625 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/ps_1.6.0.zip'
Content type 'application/zip' length 775519 bytes (757 KB)
downloaded 757 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/sass_0.4.1.zip'
Content type 'application/zip' length 3639640 bytes (3.5 MB)
downloaded 3.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/base64enc_0.1-3.zip'
Content type 'application/zip' length 43156 bytes (42 KB)
downloaded 42 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/fastmap_1.1.0.zip'
Content type 'application/zip' length 215472 bytes (210 KB)
downloaded 210 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/rappdirs_0.3.3.zip'
Content type 'application/zip' length 58813 bytes (57 KB)
downloaded 57 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/rematch_1.0.1.zip'
Content type 'application/zip' length 16237 bytes (15 KB)
downloaded 15 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/farver_2.1.0.zip'
Content type 'application/zip' length 1752681 bytes (1.7 MB)
downloaded 1.7 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/labeling_0.4.2.zip'
Content type 'application/zip' length 62679 bytes (61 KB)
downloaded 61 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/munsell_0.5.0.zip'
Content type 'application/zip' length 245309 bytes (239 KB)
downloaded 239 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/RColorBrewer_1.1-3.zip'
Content type 'application/zip' length 55887 bytes (54 KB)
downloaded 54 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/viridisLite_0.4.0.zip'
Content type 'application/zip' length 1299497 bytes (1.2 MB)
downloaded 1.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/askpass_1.1.zip'
Content type 'application/zip' length 243691 bytes (237 KB)
downloaded 237 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/bit64_4.0.5.zip'
Content type 'application/zip' length 564428 bytes (551 KB)
downloaded 551 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/prettyunits_1.1.1.zip'
Content type 'application/zip' length 37971 bytes (37 KB)
downloaded 37 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/processx_3.5.3.zip'
Content type 'application/zip' length 1251123 bytes (1.2 MB)
downloaded 1.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/evaluate_0.15.zip'
Content type 'application/zip' length 79550 bytes (77 KB)
downloaded 77 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/highr_0.9.zip'
Content type 'application/zip' length 46719 bytes (45 KB)
downloaded 45 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/yaml_2.3.5.zip'
Content type 'application/zip' length 209801 bytes (204 KB)
downloaded 204 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/xfun_0.30.zip'
Content type 'application/zip' length 405532 bytes (396 KB)
downloaded 396 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/bslib_0.3.1.zip'
Content type 'application/zip' length 5038610 bytes (4.8 MB)
downloaded 4.8 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/htmltools_0.5.2.zip'
Content type 'application/zip' length 347366 bytes (339 KB)
downloaded 339 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/jquerylib_0.1.4.zip'
Content type 'application/zip' length 525863 bytes (513 KB)
downloaded 513 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/tinytex_0.38.zip'
Content type 'application/zip' length 131599 bytes (128 KB)
downloaded 128 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/backports_1.4.1.zip'
Content type 'application/zip' length 110673 bytes (108 KB)
downloaded 108 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/assertthat_0.2.1.zip'
Content type 'application/zip' length 55005 bytes (53 KB)
downloaded 53 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/DBI_1.1.2.zip'
Content type 'application/zip' length 742879 bytes (725 KB)
downloaded 725 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/withr_2.5.0.zip'
Content type 'application/zip' length 232765 bytes (227 KB)
downloaded 227 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/data.table_1.14.2.zip'
Content type 'application/zip' length 2600830 bytes (2.5 MB)
downloaded 2.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/gargle_1.2.0.zip'
Content type 'application/zip' length 537739 bytes (525 KB)
downloaded 525 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/uuid_1.0-4.zip'
Content type 'application/zip' length 46311 bytes (45 KB)
downloaded 45 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/cellranger_1.1.0.zip'
Content type 'application/zip' length 104685 bytes (102 KB)
downloaded 102 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/curl_4.3.2.zip'
Content type 'application/zip' length 4322453 bytes (4.1 MB)
downloaded 4.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/ids_1.0.1.zip'
Content type 'application/zip' length 123951 bytes (121 KB)
downloaded 121 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/rematch2_2.1.2.zip'
Content type 'application/zip' length 47493 bytes (46 KB)
downloaded 46 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/digest_0.6.29.zip'
Content type 'application/zip' length 266549 bytes (260 KB)
downloaded 260 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/gtable_0.3.0.zip'
Content type 'application/zip' length 434301 bytes (424 KB)
downloaded 424 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/isoband_0.2.5.zip'
Content type 'application/zip' length 2726802 bytes (2.6 MB)
downloaded 2.6 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/scales_1.1.1.zip'
Content type 'application/zip' length 559482 bytes (546 KB)
downloaded 546 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/mime_0.12.zip'
Content type 'application/zip' length 48094 bytes (46 KB)
downloaded 46 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/openssl_2.0.0.zip'
Content type 'application/zip' length 3994957 bytes (3.8 MB)
downloaded 3.8 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/clipr_0.8.0.zip'
Content type 'application/zip' length 54893 bytes (53 KB)
downloaded 53 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/vroom_1.5.7.zip'
Content type 'application/zip' length 2067732 bytes (2.0 MB)
downloaded 2.0 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/tzdb_0.3.0.zip'
Content type 'application/zip' length 1445836 bytes (1.4 MB)
downloaded 1.4 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/progress_1.2.2.zip'
Content type 'application/zip' length 86021 bytes (84 KB)
downloaded 84 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/callr_3.7.0.zip'
Content type 'application/zip' length 436978 bytes (426 KB)
downloaded 426 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/fs_1.5.2.zip'
Content type 'application/zip' length 607762 bytes (593 KB)
downloaded 593 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/knitr_1.38.zip'
Content type 'application/zip' length 1486739 bytes (1.4 MB)
downloaded 1.4 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/rmarkdown_2.13.zip'
Content type 'application/zip' length 3709818 bytes (3.5 MB)
downloaded 3.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/selectr_0.4-2.zip'
Content type 'application/zip' length 486981 bytes (475 KB)
downloaded 475 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/stringi_1.7.6.zip'
Content type 'application/zip' length 16449819 bytes (15.7 MB)
downloaded 15.7 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/broom_0.7.12.zip'
Content type 'application/zip' length 1811498 bytes (1.7 MB)
downloaded 1.7 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/dbplyr_2.1.1.zip'
Content type 'application/zip' length 835906 bytes (816 KB)
downloaded 816 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/dtplyr_1.2.1.zip'
Content type 'application/zip' length 330229 bytes (322 KB)
downloaded 322 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/forcats_0.5.1.zip'
Content type 'application/zip' length 357484 bytes (349 KB)
downloaded 349 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/googledrive_2.0.0.zip'
Content type 'application/zip' length 1872694 bytes (1.8 MB)
downloaded 1.8 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/googlesheets4_1.0.0.zip'
Content type 'application/zip' length 492173 bytes (480 KB)
downloaded 480 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/ggplot2_3.3.5.zip'
Content type 'application/zip' length 4129924 bytes (3.9 MB)
downloaded 3.9 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/haven_2.4.3.zip'
Content type 'application/zip' length 1291777 bytes (1.2 MB)
downloaded 1.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/hms_1.1.1.zip'
Content type 'application/zip' length 104147 bytes (101 KB)
downloaded 101 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/httr_1.4.2.zip'
Content type 'application/zip' length 518995 bytes (506 KB)
downloaded 506 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/jsonlite_1.8.0.zip'
Content type 'application/zip' length 1155972 bytes (1.1 MB)
downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/lubridate_1.8.0.zip'
Content type 'application/zip' length 1719345 bytes (1.6 MB)
downloaded 1.6 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/modelr_0.1.8.zip'
Content type 'application/zip' length 202882 bytes (198 KB)
downloaded 198 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/readr_2.1.2.zip'
Content type 'application/zip' length 1817789 bytes (1.7 MB)
downloaded 1.7 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/readxl_1.4.0.zip'
Content type 'application/zip' length 1662792 bytes (1.6 MB)
downloaded 1.6 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/reprex_2.0.1.zip'
Content type 'application/zip' length 500327 bytes (488 KB)
downloaded 488 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/rstudioapi_0.13.zip'
Content type 'application/zip' length 303177 bytes (296 KB)
downloaded 296 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/rvest_1.0.2.zip'
Content type 'application/zip' length 207517 bytes (202 KB)
downloaded 202 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/stringr_1.4.0.zip'
Content type 'application/zip' length 216245 bytes (211 KB)
downloaded 211 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/xml2_1.3.3.zip'
Content type 'application/zip' length 2911949 bytes (2.8 MB)
downloaded 2.8 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/tidyverse_1.3.1.zip'
Content type 'application/zip' length 430226 bytes (420 KB)
downloaded 420 KB

package ‘colorspace’ successfully unpacked and MD5 sums checked
package ‘sys’ successfully unpacked and MD5 sums checked
package ‘bit’ successfully unpacked and MD5 sums checked
package ‘ps’ successfully unpacked and MD5 sums checked
package ‘sass’ successfully unpacked and MD5 sums checked
package ‘base64enc’ successfully unpacked and MD5 sums checked
package ‘fastmap’ successfully unpacked and MD5 sums checked
package ‘rappdirs’ successfully unpacked and MD5 sums checked
package ‘rematch’ successfully unpacked and MD5 sums checked
package ‘farver’ successfully unpacked and MD5 sums checked
package ‘labeling’ successfully unpacked and MD5 sums checked
package ‘munsell’ successfully unpacked and MD5 sums checked
package ‘RColorBrewer’ successfully unpacked and MD5 sums checked
package ‘viridisLite’ successfully unpacked and MD5 sums checked
package ‘askpass’ successfully unpacked and MD5 sums checked
package ‘bit64’ successfully unpacked and MD5 sums checked
package ‘prettyunits’ successfully unpacked and MD5 sums checked
package ‘processx’ successfully unpacked and MD5 sums checked
package ‘evaluate’ successfully unpacked and MD5 sums checked
package ‘highr’ successfully unpacked and MD5 sums checked
package ‘yaml’ successfully unpacked and MD5 sums checked
package ‘xfun’ successfully unpacked and MD5 sums checked
package ‘bslib’ successfully unpacked and MD5 sums checked
package ‘htmltools’ successfully unpacked and MD5 sums checked
package ‘jquerylib’ successfully unpacked and MD5 sums checked
package ‘tinytex’ successfully unpacked and MD5 sums checked
package ‘backports’ successfully unpacked and MD5 sums checked
package ‘assertthat’ successfully unpacked and MD5 sums checked
package ‘DBI’ successfully unpacked and MD5 sums checked
package ‘withr’ successfully unpacked and MD5 sums checked
package ‘data.table’ successfully unpacked and MD5 sums checked
package ‘gargle’ successfully unpacked and MD5 sums checked
package ‘uuid’ successfully unpacked and MD5 sums checked
package ‘cellranger’ successfully unpacked and MD5 sums checked
package ‘curl’ successfully unpacked and MD5 sums checked
package ‘ids’ successfully unpacked and MD5 sums checked
package ‘rematch2’ successfully unpacked and MD5 sums checked
package ‘digest’ successfully unpacked and MD5 sums checked
package ‘gtable’ successfully unpacked and MD5 sums checked
package ‘isoband’ successfully unpacked and MD5 sums checked
package ‘scales’ successfully unpacked and MD5 sums checked
package ‘mime’ successfully unpacked and MD5 sums checked
package ‘openssl’ successfully unpacked and MD5 sums checked
package ‘clipr’ successfully unpacked and MD5 sums checked
package ‘vroom’ successfully unpacked and MD5 sums checked
package ‘tzdb’ successfully unpacked and MD5 sums checked
package ‘progress’ successfully unpacked and MD5 sums checked
package ‘callr’ successfully unpacked and MD5 sums checked
package ‘fs’ successfully unpacked and MD5 sums checked
package ‘knitr’ successfully unpacked and MD5 sums checked
package ‘rmarkdown’ successfully unpacked and MD5 sums checked
package ‘selectr’ successfully unpacked and MD5 sums checked
package ‘stringi’ successfully unpacked and MD5 sums checked
package ‘broom’ successfully unpacked and MD5 sums checked
package ‘dbplyr’ successfully unpacked and MD5 sums checked
package ‘dtplyr’ successfully unpacked and MD5 sums checked
package ‘forcats’ successfully unpacked and MD5 sums checked
package ‘googledrive’ successfully unpacked and MD5 sums checked
package ‘googlesheets4’ successfully unpacked and MD5 sums checked
package ‘ggplot2’ successfully unpacked and MD5 sums checked
package ‘haven’ successfully unpacked and MD5 sums checked
package ‘hms’ successfully unpacked and MD5 sums checked
package ‘httr’ successfully unpacked and MD5 sums checked
package ‘jsonlite’ successfully unpacked and MD5 sums checked
package ‘lubridate’ successfully unpacked and MD5 sums checked
package ‘modelr’ successfully unpacked and MD5 sums checked
package ‘readr’ successfully unpacked and MD5 sums checked
package ‘readxl’ successfully unpacked and MD5 sums checked
package ‘reprex’ successfully unpacked and MD5 sums checked
package ‘rstudioapi’ successfully unpacked and MD5 sums checked
package ‘rvest’ successfully unpacked and MD5 sums checked
package ‘stringr’ successfully unpacked and MD5 sums checked
package ‘xml2’ successfully unpacked and MD5 sums checked
package ‘tidyverse’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Mairaj ali\AppData\Local\Temp\RtmpqgUTrv\downloaded_packages
installing the source package ‘blob’

trying URL 'https://cran.rstudio.com/src/contrib/blob_1.2.3.tar.gz'
Content type 'application/x-gzip' length 10543 bytes (10 KB)
downloaded 10 KB

* installing *source* package 'blob' ...
** package 'blob' successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
  converting help for package 'blob'
    finding HTML links ... done
    as.blob                                 html  
    blob                                    html  
    vec_cast.blob                           html  
    vec_ptype2.blob                         html  
** building package indices
** testing if installed package can be loaded from temporary location
*** arch - i386
*** arch - x64
** testing if installed package can be loaded from final location
*** arch - i386
*** arch - x64
** testing if installed package keeps a record of temporary installation path
* DONE (blob)

The downloaded source packages are in
	‘C:\Users\Mairaj ali\AppData\Local\Temp\RtmpqgUTrv\downloaded_packages’
> library(tidyverse)
-- Attaching packages --------------------------------------------------- tidyverse 1.3.1 --
âˆš ggplot2 3.3.5     âˆš dplyr   1.0.8
âˆš tibble  3.1.6     âˆš stringr 1.4.0
âˆš readr   2.1.2     âˆš forcats 0.5.1
âˆš purrr   0.3.4     
-- Conflicts ------------------------------------------------------ tidyverse_conflicts() --
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
> install.packages(ggplot2)
Error in install.packages : object 'ggplot2' not found
> install.packages(ggplot)
Error in install.packages : 'match' requires vector arguments
> library(ggplot2)
> library(tidyverse)
> ggplot(clean,aes(year,Ozone))+geom_point(size=5)+geom_line(colours("red"))
Error in if (distinct) c[!duplicated(t(col2rgb(c)))] else c : 
  argument is not interpretable as logical
> ggplot(clean,aes(year,Ozone))+
+ geom_point()+
+ geom_line()
> #month as factor
> ggplot(clean,aes(mont,Ozone))+
+ geom_point()
Error in FUN(X[[i]], ...) : object 'mont' not found
> ggplot(clean,aes(month,Ozone))+
+ geom_point()+
+ geom_line()
> 
