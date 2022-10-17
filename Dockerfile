ARG BASE_CONTAINER=ucsdets/datascience-notebook:2022.3-stable
FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root


RUN pip install nbgrader==0.8.1

USER $NB_UID
