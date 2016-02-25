[![Travis-CI Build Status](https://travis-ci.org/cannin/simpleRCache.svg?branch=master)](https://travis-ci.org/cannin/simpleRCache)
[![codecov.io](https://codecov.io/github/cannin/simpleRCache/coverage.svg?branch=master)](https://codecov.io/github/cannin/simpleRCache?branch=master)

# simpleRCache

## Overview

A package to do simple result caching in R based on Henrik Bengtsson's R.cache. The global environment is not considered when caching results simplifying moving files between multiple instances of R. Relies on more base functions than R.cache (e.g. cached results are saved using saveRDS/readRDS). NOTE: This package tries to provide the most essential components necessary and a lot of features have been removed.

## Installation

```R
library("devtools");
devtools::install_github("cannin/simpleRCache");
```  
