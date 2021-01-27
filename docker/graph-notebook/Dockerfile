FROM python:3.6-buster

LABEL maintainer="Lionel Fleury <lionel@sqooba.io>"

# install notebook and graph plugin
RUN \
  pip install tornado==4.5.3 && \
  pip install notebook==5.7.10 && \
  pip install graph-notebook
  
# install and enable the visualization widget
RUN jupyter nbextension install --py --sys-prefix graph_notebook.widgets
RUN jupyter nbextension enable  --py --sys-prefix graph_notebook.widgets

# copy static html resources
RUN python -m graph_notebook.static_resources.install
RUN python -m graph_notebook.nbextensions.install

# copy premade starter notebooks
RUN python -m graph_notebook.notebooks.install --destination /home/sqooba

# add user
RUN useradd sqooba
RUN chown -R sqooba:sqooba /home/sqooba
WORKDIR /home/sqooba
USER sqooba

EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--NotebookApp.password=''", "--NotebookApp.token=''"]
