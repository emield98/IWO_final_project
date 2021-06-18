#!/bin/bash
# A shell script that can search the frequency of a given word (user input) in a given .txt file (user input).



moi_groningen_19=$(wc -l 03_2019_results/moi_groningen.tsv | cut -d' ' -f1)
moi_groningen_cap_19=$(wc -l 03_2019_results/moi_groningen_cap.tsv | cut -d' ' -f1)
moi_groningen_16=$(wc -l 06_2016_results/moi_groningen.tsv | cut -d' ' -f1)
moi_groningen_cap_16=$(wc -l 06_2016_results/moi_groningen_cap.tsv | cut -d' ' -f1)
sum_moi_groningen=$(($moi_groningen_19 + $moi_groningen_cap_19 + $moi_groningen_16 + $moi_groningen_cap_16))
echo moi in Groningen:
echo $sum_moi_groningen

hallo_groningen_19=$(wc -l 03_2019_results/hallo_groningen.tsv | cut -d' ' -f1)
hallo_groningen_cap_19=$(wc -l 03_2019_results/hallo_groningen_cap.tsv | cut -d' ' -f1)
hallo_groningen_16=$(wc -l 06_2016_results/hallo_groningen.tsv | cut -d' ' -f1)
hallo_groningen_cap_16=$(wc -l 06_2016_results/hallo_groningen_cap.tsv | cut -d' ' -f1)
sum_hallo_groningen=$(($hallo_groningen_19 + $hallo_groningen_cap_19 + $hallo_groningen_16 + $hallo_groningen_cap_16))
echo hallo in Groningen:
echo $sum_hallo_groningen

echo total tweets in Groningen:
echo $(($sum_moi_groningen + $sum_hallo_groningen))
echo
echo

moi_enschede_19=$(wc -l 03_2019_results/moi_enschede.tsv | cut -d' ' -f1)
moi_enschede_cap_19=$(wc -l 03_2019_results/moi_enschede_cap.tsv | cut -d' ' -f1)
moi_enschede_16=$(wc -l 06_2016_results/moi_enschede.tsv | cut -d' ' -f1)
moi_enschede_cap_16=$(wc -l 06_2016_results/moi_enschede_cap.tsv | cut -d' ' -f1)
sum_moi_enschede=$(($moi_enschede_19 + $moi_enschede_cap_19 + $moi_enschede_16 + $moi_enschede_cap_16))
echo moi in Enschede:
echo $sum_moi_enschede

hallo_enschede_19=$(wc -l 03_2019_results/hallo_enschede.tsv | cut -d' ' -f1)
hallo_enschede_cap_19=$(wc -l 03_2019_results/hallo_enschede_cap.tsv | cut -d' ' -f1)
hallo_enschede_16=$(wc -l 06_2016_results/hallo_enschede.tsv | cut -d' ' -f1)
hallo_enschede_cap_16=$(wc -l 06_2016_results/hallo_enschede_cap.tsv | cut -d' ' -f1)
sum_hallo_enschede=$(($hallo_enschede_19 + $hallo_enschede_cap_19 + $hallo_enschede_16 + $hallo_enschede_cap_16))
echo hallo in Enschede:
echo $sum_hallo_enschede

echo total tweets in Enschede:
echo $(($sum_moi_enschede + $sum_hallo_enschede))