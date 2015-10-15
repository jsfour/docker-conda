FROM continuumio/anaconda
RUN apt-get update -qq && apt-get install -y build-essential

ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME
