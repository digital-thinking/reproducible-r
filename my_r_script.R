# load libraries
library(checkpoint)
create_checkpoint("2022-08-11")
use_checkpoint("2022-08-11")

library(here)

print(here('.'))
print('Success')
