ARG BASE_CONTAINER=ghcr.io/ucsd-ets/datascience-notebook:2024.3-scipy-ml-fixup
FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root

RUN pip install otter-grader

USER $NB_UID
