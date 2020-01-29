

#!/bin/bash
#SBATCH -n 64                # Number of cores
#SBATCH -N 1                # Ensure that all cores are on one machine
#SBATCH -t 0-23:50          # Runtime in D-HH:MM, minimum of 10 minutes
#SBATCH -p general	    # Partition to submit to
#SBATCH --mem=60000           # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH -o myoutput_%j.out  # File to which STDOUT will be written, %j inserts jobid
#SBATCH -e myerrors_%j.err  # File to which STDERR will be written, %j inserts jobid
#SBATCH --mail-type=END
#SBATCH --mail-user=pruhm@fas.harvard.edu
module load stata/15.0-fasrc01
stata-mp do extract00012.do
stata-mp do extract00013.do
stata-mp do extract00011.do

