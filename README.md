# cryosparc_star_conversion
converts cryosparc particles to .star files

This should be run from you RELION folder in the transfer node of the o2 cluster.

pyem must be installed and configured in order to use this.

This code is designed to run the pyem csparc2star.py script from the home folder. If this script is not located in your home folder, change the file path to the script before using.

Setup:
1. Setup pyem in your home directory.
2. Copy the script to a usefule directory (such as your home directory) by navigating to the directory (e.g. cd ~) and copying the scipt into a new file (e.g. nano cryosparc_star_conversion.sh)
3. Make the script executable using chmod +x cryosparc_star_conversion.sh.
4. Export the job to be converted from cryosparc
5. Connect to the **transfer node** and navigate to your RELION data processing folder
6. run "source path/to/cryosparc_star_conversion.sh"

**run the script by running source path/to/cryosparc_star_conversion.sh**
