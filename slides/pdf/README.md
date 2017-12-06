## Converting the Lecture Slides to PDF in Ubuntu
### Preliminaries
* Install node.js 7.x, NOT 8.x or 9.x: 
  * `curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -`
  * `sudo apt-get install -y nodejs`
* Install the RISE plugin for Jupyter at precisely version 5.0.0:
  * `conda install -c damianavila82 rise=5.0.0`
* Install Decktape:
  * `npm install decktape`
### Manual Conversion
* Start Jupyter in the slides folder of this repo, and note down the token:
  * `cd /path/to/ComputationalFinance/slides`
  * `jupyter notebook`
* Use decktape to convert the slides. E.g., for Week 1, 
  * `` `npm bin`/decktape -s 1680x1050 rise http://localhost:8888/notebooks/week1.ipynb?token=<token> week1.pdf``
### Automatic Conversion
* The bash script `makeslides.sh` will automatically convert all slides to pdf and also create a file `ComputationalFinance.pdf` containing all slides:
  * `cd /path/to/ComputationalFinance/slides/pdf`
  * `chmod +x makeslides.sh`
  * `./makeslides.sh`

