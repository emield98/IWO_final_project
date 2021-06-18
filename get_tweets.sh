#!/bin/bash
# A shell script that can search for words in given selected string from a JSON input
# Output to an .tsv file

# location of corpus
location_corpus=06_2016/*.out.gz

# Get moi in Groningen
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("moi")) | [ .user.location, .text ] | @tsv' > moi_groningen.tsv
echo done moi Groningen

# Get Moi in Groningen
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("Moi")) | [ .user.location, .text ] | @tsv' > moi_groningen_cap.tsv
echo done Moi Groningen

# Get moi in Enschede
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("moi")) | [ .user.location, .text ] | @tsv' > moi_enschede.tsv
echo done moi Enschede

# Get Moi in Enschede
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("Moi")) | [ .user.location, .text ] | @tsv' > moi_enschede_cap.tsv
echo done Moi Enschede

# Get hallo in Groningen
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("hallo")) | [ .user.location, .text ] | @tsv' > hallo_groningen.tsv
echo done hallo Groningen

# Get Hallo in Groningen
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Groningen")) | 
select(.text | contains ("Hallo")) | [ .user.location, .text ] | @tsv' > hallo_groningen_cap.tsv
echo done Hallo Groningen

# Get hallo in Enschede
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("hallo")) | [ .user.location, .text ] | @tsv' > hallo_enschede.tsv
echo done hallo Enschede

# Get Hallo in Enschede
zless $location_corpus | jq -r '. |
select( .user.location != null) | 
select ( .user.location | contains("Enschede")) | 
select(.text | contains ("Hallo")) | [ .user.location, .text ] | @tsv' > hallo_enschede_cap.tsv
echo done Hallo Enschede
