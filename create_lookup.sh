#d --> Dataset
#B --> Bucket Size
#r --> Number of repititions

python ./MACH/utils.py --d Wiki10-31K --B 512 --r 16
python ./MACH/utils.py --d Wiki10-31K --B 1024 --r 16
python ./MACH/utils.py --d Eurlex-4K --B 64 --r 16
python ./MACH/utils.py --d Eurlex-4K --B 128 --r 16
