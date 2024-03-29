library(readxl)
cv_entries <- read_excel("data/cv_entries.xlsx")
View(cv_entries)

cv_entries <- cv_entries[c(1:3,5,4,6:10),]
cv_entries[5,2] <- "Jan-Apr/2022"
cv_entries[5,3] <- ""

cv_entries[1,5] <- "Univ. Grenoble Alpes, France | **[<i class=\"fab falink0 fa-github\"></i>](https://github.com/bttomio/UGA_thesisdown)[Reproducibility repository]{.smaller-font}**"

cv_entries <- cv_entries[c(1:3,4,4:10),]

cv_entries[4,2] <- "Since 1/2022"
cv_entries[4,3] <- ""
cv_entries[4,4] <- "Ph.D. Intern"
cv_entries[4,5] <- "Bank of England, United Kingdom"

cv_entries[2,4] <- "M.A. in Int. Economics"

cv_entries[5,2] <- "Since 6/2012"

cv_entries[3,4] <- "B.Sc. in Economics"

library(openxlsx)
write.xlsx(cv_entries, 'data/cv_entries.xlsx',
           overwrite = T)


###########

library(tidyverse)
library(readxl)
pubs_entries <- read_excel("data/pubs.xlsx")

#pubs_entries[] <- pubs_entries[c(1:10, 12, 11, 14, 15, 13),]

pubs_entries <- pubs_entries %>% 
  add_row(.before = 10)

pubs_entries[10,1] <- 'wp' 

pubs_entries[10,2] <- 1 
pubs_entries[11,2] <- 2 
pubs_entries[12,2] <- 3 
pubs_entries[13,2] <- 4 
pubs_entries[14,2] <- 5
pubs_entries[15,2] <- 6
pubs_entries[16,2] <- 7

pubs_entries[10,3] <- 'Tomio, B. T., Cañón, C. S and Gerba, E.' 

pubs_entries[10,5] <- "British pound carry trade activity"
 
library(openxlsx)
write.xlsx(pubs_entries, 'data/pubs.xlsx',
           overwrite = T)


#####

```{r}
PDF <- FALSE # Set to TRUE when rendering to PDF via pagedown::chrome_print("/home/bttomio/Documents/GitHub/bttomio.github.io/cv/index.html", format = "pdf") or pagedown::chrome_print("C:/Users/bttom/OneDrive - FURB/Documentos/GitHub/bttomio.github.io/cv/index.html", format = "pdf")
if(PDF) {
  header <- '
  View online
  <a href="https://bttomio.github.io/cv/" class="icon-block">
      <i class="fas fafooter fa-globe"></i>
  </a>
  '
} else {
  header <- '
  Download PDF
  <a href="https://bttomio.github.io/CV_PDF/bttomio.pdf" class="icon-block">
      <i class="fas fafooter fa-download"></i>
  </a>
  '
}
```


<div class = "download">
  ```{r results = "asis"}
cat(header)
```

</div>