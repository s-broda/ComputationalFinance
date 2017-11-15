## Converting the Lecture Slides to PDF
To convert the Jupyter notebooks to pdfs, 
* Install node.js 7.x; e.g., in Ubuntu: 
  * `curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -`
  * `sudo apt-get install -y nodejs`
* Install the RISE plugin for Jupyter at precisely version 5.0.0:
  * `conda install -c damianavila82 rise=5.0.0`
* Install Decktape:
  * `npm install decktape`
* Start Jupyter in the slides folder of this repo, and note down the token:
  * `cd /path/to/ComputationalFinance/slides`
  * `jupyter notebook`
* Finally, use decktape to convert the slides. E.g., for Week 1, 
  * `` `npm bin`/decktape -s 1680x1050 rise http://localhost:8888/notebooks/week1.ipynb?token=<token> week1.pdf``

