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


for i in {1..10}
do
  echo "our hypothesis is right!" > important_results${i}.txt
done

echo "Files created:"
ls important_results* | wc -l

for i in {1..10}
do
  echo "File: important_results${i}.txt"
  cat important_results${i}.txt
  echo "-----------------------------"
done
