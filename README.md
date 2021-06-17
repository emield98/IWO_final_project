# Introduction to Research Methods - Final Project

This GitHub repository is created for the final project of the course Introduction to Research Methods. The shell scripts will count the amount of occurences in a corpus of tweets for a given word in a given location. 

The locations where the words will be searched: `Groningen` `Enschede`.

The words this script will search: `Moi`, `moi`, `Hallo`, `hallo`.

## Files
* **`README.md`** File with information about this GitHub repository.
* **`get_tweets.sh`** The shell script that will output the results for every word in every place given above in multiple output `.tsv` files. 
* **`count_tweets.sh`** The shell script that will count the amount of tweets given in the output files of `get_tweets.sh`.

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
----
To run the script go through the following steps:
1. Make sure you have a directory `tweets_corpus`, containing all the tweets in `.out.gz` format.
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
7. To  

## Results



