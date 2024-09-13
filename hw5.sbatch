#!/bin/bash 
#SBATCH --job-name=me_bash 
#SBATCH --ntasks=1 
#SBATCH --nodes=1              
#SBATCH --mem=1gb                     
#SBATCH --time=00:03:00    
#SBATCH --partition=windfall 
#SBATCH --account=windfall 
#SBATCH --mail-type=END
#SBATCH --mail-user=blimon@arizona.edu

cd ~/ccbb_projects/
pwd

grep -w "coding" gene_results.txt > coding_genes.txt

sed -i 's/\b0\b/1/g' coding_genes.txt

echo "Updated coding_genes.txt:"
cat coding_genes.txt
