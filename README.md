# kobeShotPrediction

Official Description:  
Shot-making prediction of NBA player Kobe Bryant, using dataset from Kaggle.

Un-official Description:
An excuse to use Pandas, PySpark and related technologies.

# Docker run

In the directory containing the Dockerfile:

$ docker build . --tag pyspark:latest

This will build an images called 'pyspark' with 'latest' tag.
To run a 'pyspark' container and get bash prompt:

$ docker run -it pyspark bash

If you want to volume bind the current working directory to 
/home/ in the container:

$ docker run -v $PWD:/home/ -it pyspark bash

# Simple examples.

If you have a pyspark script 'analysis.py', then use
'spark-submit' to execute the script:

$ spark-submit analysis.py
