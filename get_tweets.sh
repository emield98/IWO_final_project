#!/bin/bash
# A shell script that can search the frequency of a given word (user input) in a given .txt file (user input).

location_corpus=06_2016/*.out.gz

# Get 
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("moi")) | [ .user.location, .text ] | @tsv' > moi_groningen.tsv

echo done moi Groningen

zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("Moi")) | [ .user.location, .text ] | @tsv' > moi_groningen_cap.tsv

echo done Moi Groningen

zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("moi")) | [ .user.location, .text ] | @tsv' > moi_enschede.tsv

echo done moi Enschede

zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("Moi")) | [ .user.location, .text ] | @tsv' > moi_enschede_cap.tsv

echo done Moi Enschede

zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("hallo")) | [ .user.location, .text ] | @tsv' > hallo_groningen.tsv

echo done hallo Groningen

zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("Hallo")) | [ .user.location, .text ] | @tsv' > hallo_groningen_cap.tsv

echo done Hallo Groningen

zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("hallo")) | [ .user.location, .text ] | @tsv' > hallo_enschede.tsv

echo done hallo Enschede

zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("Hallo")) | [ .user.location, .text ] | @tsv' > hallo_enschede_cap.tsv

echo done Hallo Enschede





