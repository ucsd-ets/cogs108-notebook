ARG BASE_CONTAINER=ucsdets/datascience-notebook:2020.2-stable
FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root

RUN conda install -y pandas==0.25.2
RUN pip install nltk nbgrader==0.6.1

USER $NB_UID
