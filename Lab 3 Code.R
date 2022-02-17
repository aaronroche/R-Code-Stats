

library(mosaic)
library(tidyverse)

adult <- filter(nhanes,age>=18)

mean(adult$weight<quantile(adult$weight,0.1))
