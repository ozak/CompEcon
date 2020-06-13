#!/usr/bin/env bash
# Use conda to create python environment with Jupyter,
# IPython, Stata, R, GIS
# ======================================================
# Author:  Ömer Özak, 2019 (ozak at smu.edu)
# Website: http://omerozak.com
# GitHub:  https://github.com/ozak/
# ======================================================
conda create --name GeoPython38env -c conda-forge -c r --override-channels python=3.8 asciitree autopep8 babel basemap beautifulsoup4 blas bokeh bzip2 cartopy colorcet curl cython cytoolz dask dask-core datashader datashape descartes dill docutils earthengine-api fiona gensim geographiclib geopandas geoplot geopy geotiff google-api-python-client google-auth google-auth-httplib2 georasters imageio imagesize ipykernel ipyparallel ipython ipython_genutils ipywidgets jupyter jupyterlab kiwisolver matplotlib-base matplotlib markdown networkx nose numba numpy openpyxl pandas pandas-datareader pandoc pandocfilters pandana pelican pycountry pymc3 pysal urbanaccess rasterstats r r-base r-irkernel statsmodels sympy rpy2 rasterio r-tidyr r-tibble r-dplyr rise seaborn scikit-allel scikit-bio scikit-image scikit-learn scipy seaborn swifter theano unidecode urllib3 wikipedia xlrd jupyter_contrib_nbextensions rstudio camelot-py html5lib

conda activate GeoPython38env
pip install linearmodels git+https://github.com/jeetsukumaran/DendroPy.git git+https://github.com/dmsul/econtools ecopy facebook-business facebook-sdk fontawesome-markdown geocoder geonamescache googledrivedownloader googletrans ipystata isodate isounidecode latexcodec ldpred linearmodels lingpy mccabe ordered-set plinkio pyarrow pybtex pycldf pycountry pydocstyle pyface pyflakes pylatex pyparsing pyreadstat pytest-cov python-jsonrpc-server python-language-server pytrends quilt ratelim readme-renderer rfc3986 rope simpledbf simplejson smartypants snowballstemmer snuggs stata-kernel tabulate tex2ipy texsoup toolz traits traitsui twine typogrify uritemplate w3lib webencodings wrapt xlwt yapf modin stargazer covid COVID19Py pandasql

python -m stata_kernel.install
conda install -c conda-forge nodejs -y
jupyter labextension install jupyterlab-stata-highlight
ipcluster nbextension enable
jupyter contrib nbextension install --sys-prefix
jupyter nbextension enable nbTranslate/main
r -e "IRkernel::installspec()"
