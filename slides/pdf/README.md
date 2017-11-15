To create a pdf file from a Jupyter notebook:

* Install node.js 7.x. E.g., in Ubuntu: 
  * `curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -`
  * `sudo apt-get install -y nodejs`
* Make sure the RISE plugin for Jupyter is version 5.0.0
  * `conda install -c damianavila82 rise=5.0.0`
* Install decktape:
  * `npm install decktape`
* Start jupyter in the slides folder of this repo, and note down the token:
  * `cd /path/to/ComputationalFinance/slides`
  * `jupyter notebook`
* Finally, use decktape to convert the slides. E.g., for Week 1, 
  * `npm bin`/decktape -s 1680x1050 rise http://localhost:8888/notebooks/week1.ipynb?token=<token> week1.pdf

