#!/bin/bash
#converts cryosparc files to .star files

set -e

echo "Enter input file (.cs):"
read cryosparcINPUTfile
echo "Enter job:"
read job

conda init bash
conda activate pyem

#runs csparc2star.py from home directory
python3 ~/csparc2star.py $cryosparcINPUTfile ${job}_raw_output_particles.star --relion2
#remove unwanted columns
relion_star_handler --i ${job}_raw_output_particles.star --o ${job}_output_particles.star --remove_column rlnRandomSubset
#rename files in .star file
sed -i 's/particles.mrc/particles.mrcs/' ${job}_output_particles.star
sed -i "s/>J[0-9]*\/extract/${job}_conversion/" ${job}_output_particles.star
echo "Enter parent (cryosparc job) file path:"
read parent_file_path
#create symbolic link to parent files
mkdir ${job}_conversion
cd ${job}_conversion
ln -s $parent_file_path/* .
rename .mrc .mrcs *.mrc