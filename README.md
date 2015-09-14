# README for Spot Pricing project

>This project provides the code basis for [The Data Science of Spot Pricing](https://medium.com/cloud-uprising/the-data-science-of-aws-spot-pricing-8bed655caed2). 

files:
  bin/ - scripts
  	download.sh - bash script to download (by default 1 days worth) pricing dataset as json
  data/ - datasets
  notebooks - the ipython notebooks
  

## to start:

1. startup ipython

> % ipython notebook

2. using the web interface, interact with the notebooks.

## managing the dependencies

since the notebooks require a bunch of libraries, (pandas, matlabplot, etc), you can
run the following command to get all the requirements installed:

> % pip install -r requirements.txt

## Example notebook

Go to [Example ipython notebook](https://github.com/lila/spot_price_history/blob/master/notebook/SpotPriceHistory.ipynb)

