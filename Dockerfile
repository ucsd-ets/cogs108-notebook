ARG BASE_CONTAINER=ucsdets/datascience-notebook:2019.4.7
FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root

RUN conda install --quiet --yes \
		nltk
RUN python -m nltk.downloader -d /opt/conda/share/nltk_data all

USER $NB_UID
