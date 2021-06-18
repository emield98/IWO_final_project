# Introduction to Research Methods - Final Project

This GitHub repository is created for the final project of the course Introduction to Research Methods. The shell scripts will count the amount of occurences in a corpus of tweets for a given word in a given location. 

The locations where the words will be searched: `Groningen` `Enschede`.

The words this script will search: `Moi`, `moi`, `Hallo`, `hallo`.

### Versions
The script is runned in Windows 10, using the Ubuntu terminal. 

Windows:            `Microsoft Windows 10 Home | 10.0.19041 N/A Build 19041`

Ubuntu terminal:    `Ubuntu 20.04.2 LTS`

jq:                 `jq-1.6`

## Files
* **`README.md`** File with information about this GitHub repository.
* **`get_tweets.sh`** The shell script that will output the results for every word in every place given above in multiple output `.tsv` files. 
* **`count_tweets.sh`** The shell script that will count the amount of tweets given in the output files of `get_tweets.sh`.
* **`06_2016/`** The directory that contains the Twitter corpus of 06-2016, tweeted from the Netherlands (note: empty map since it is a large corpus).
* **`03_2019/`** The directory that contains the Twitter corpus of 03-2019, tweeted from the Netherlands (note: empty map since it is a large corpus).
* **`03_2019_results/`** The directory that contains the `.tsv` files, given as output by `get_tweets.sh` for corpus `06_2016/`.
* **`03_2019_results/`** The directory that contains the `.tsv` files, given as output by `get_tweets.sh` for corpus `03_2019/`.

## Getting started
This repository can be runned in two ways:

### Download zip file containing the files in this repository

1. Click the green `code` button. Choose for `Download ZIP`. 
2. A `.zip` file will be downloaded to your PC.
3. Unpack the `.zip` file in a directory, which contains the corpus of tweets.
4. Open the shell for the directory `IWO_final_project-main`.

### Use the Linux shell to clone the repository

1. Open the shell.
2. Choose the directory where the repository should be cloned to.
3. Type the following command: 
```shell 
$ git clone https://github.com/emield98/IWO_final_project.git
```
4. Press enter to create a clone of this repository.
5. Change directory in the shell (by typing `$ cd IWO_final_project/`) to this repository.

## Running the script
To run the script `get_tweets.sh` go through the following steps:
1. Make sure you change the location to the directory of the Twitter corpus in the script `get_tweets.sh`, containing all the tweets in `.out.gz` format.
2. Make sure you have installed `jq`:
    - type: `$  sudo apt-get install jq`
4. Type: `$ ./get_tweets.sh`.
5. Now the program will run for a long time, depending on the size of the corpus.
6. `get_tweets.sh` will output 8 `.tsv` files, containing the tweets it is searched for (see comments in `get_tweets.sh`):
    - `moi_groningen.tsv`
    - `moi_groningen_cap.tsv`
    - `hallo_groningen.tsv`
    - `hallo_groningen_cap.tsv`
    - `moi_enschede.tsv`
    - `moi_enschede_cap.tsv`
    - `hallo_enschede.tsv`
    - `hallo_enschede_cap.tsv`
    (if you want to change those names, it can be  done in `get_tweets.sh`)


To count the amount of occurences, you have to run `count_tweets.py`:
1. First, edit the links in `count_tweets.sh` to the location of the `.tsv` files. 
2. Type: `$ ./count_tweets.py`
3. This program counts the tweets and will output it. For example: `moi` and `Moi` are combined for the results of `moi`. 


## Results
The results for this repository, which was needed for the final report of Introduction to Research Methods, is the following:
```shell 
moi in Groningen:
126
hallo in Groningen:
836
total tweets in Groningen:
962


moi in Enschede:
39
hallo in Enschede:
168
total tweets in Enschede:
207
```

The Twitter corpus that is used is two months of messages tweeted from the Netherlands:
- 06-2016
- 03-2019

See for further information the report.
