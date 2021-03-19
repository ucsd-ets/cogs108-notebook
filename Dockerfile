ARG BASE_CONTAINER=ucsdets/datascience-notebook:2021.1-stable
FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

USER root


RUN pip install nltk geopandas pandas==1.2.3 && \
    jupyter kernelspec remove -f python3_clean && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER && \
    chown -R jovyan:users /opt/conda/etc/jupyter/nbconfig && \
    chmod -R +r /opt/conda/etc/jupyter/nbconfig

USER $NB_UID
