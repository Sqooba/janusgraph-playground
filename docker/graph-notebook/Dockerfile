FROM python:3.6-buster

LABEL maintainer="Lionel Fleury <lionel@sqooba.io>"

# install notebook and graph plugin
RUN \
  pip install tornado==4.5.3 && \
  pip install notebook==5.7.10 && \
  pip install graph-notebook && \
  pip install tqdm && \
  pip install pandas
  
# install and enable the visualization widget
RUN jupyter nbextension install --py --sys-prefix graph_notebook.widgets
RUN jupyter nbextension enable  --py --sys-prefix graph_notebook.widgets

# copy static html resources
RUN python -m graph_notebook.static_resources.install
RUN python -m graph_notebook.nbextensions.install

# copy premade starter notebooks
RUN python -m graph_notebook.notebooks.install --destination /home/sqooba

# add javascript static files
RUN wget -q https://cdnjs.cloudflare.com/ajax/libs/vis/4.12.0/vis.min.css -O /usr/local/lib/python3.6/site-packages/notebook/static/vis.css
RUN wget -q https://cdnjs.cloudflare.com/ajax/libs/vis/4.12.0/vis.min.js -O /usr/local/lib/python3.6/site-packages/notebook/static/vis.js
RUN wget -q https://unpkg.com/react-dom@16.0.0/umd/react-dom.production.min.js -O /usr/local/lib/python3.6/site-packages/notebook/static/components/react/react-dom.production.min.js

# add user
RUN useradd sqooba
RUN chown -R sqooba:sqooba /home/sqooba
WORKDIR /home/sqooba
USER sqooba

EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--NotebookApp.password=''", "--NotebookApp.token=''"]
