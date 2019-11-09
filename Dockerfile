FROM jupyter/scipy-notebook:307ad2bb5fce

LABEL maintainer="Serge Rey <sjsrey@gmail.com>"

#RUN conda config --add channels conda-forge --force

USER root
COPY .condarc /home/jovyan/.condarc
COPY environment.yml /home/jovyan/environment.yml
RUN conda config --set channel_priority strict
RUN conda config --set safety_checks disabled
RUN conda install -c conda-forge -c defaults --quiet --yes \
  'pip'\
  'bokeh'\
  'cartopy'\
  'dask'\
  'descartes'\
  'geopandas'\
  'ipython'\
  'ipywidgets'\
  'jupyter'\
  'mplleaflet'\
  'jupyterlab'\
  'jupytext'\
  'nbconvert'\
  'networkx'\
  'palettable'\
  'pysal'\
  'qgrid'\
  'rasterio'\
  'scikit-learn'\
  'seaborn'\
  'statsmodels'\
  'xlrd'\
  'xlsxwriter'
RUN pip install -U \
        folium\
        contextily\
        geojson\
        palettable\
        libpysal\
        esda\
        mapclassify\
        giddy\
        region\
        datashader
 
# Switch back to user to avoid accidental container runs as root
USER $NB_UID
