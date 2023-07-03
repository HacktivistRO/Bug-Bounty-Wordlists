# Common Crawling Wordlist for Directory Fuzzing

This folder contains a compilation of the most common directory names that can be used for directory brute forcing.

Due to file size restrictions on GitHub, each file cannot be more than 25 MB. The complete wordlist has been split into part files of 25 MB each.

To help you create a wordlist from part files, merge.sh, the script has been shared with you. This script allows you to merge multiple part files into a single file to be used for your future reference. 

## Usage

1. Place the part-files in the `part-files` folder.
2. Open a terminal and navigate to the script's directory.
3. Run the script using the following command:

   ```shell
   bash merge.sh
   
### The script will merge all the part files into a single file named directories-wordlist.txt in the script's directory.

### If you wish to remove the part files after the merge, the script will prompt you with the following message:

   ```shell
     Do you want to remove all the part files? [Y,n]
   ```

Type Y or y to remove the part files or any other key to keep them.

After the merge, the common crawling wordlist will be saved as common_crawling-wordlist.txt in the same directory as the script.

## Notes
- The script assumes you have a compatible shell environment (such as Bash) to run the script.
- Ensure you can read and write files in the script's directory.
- If the part-files folder or merged wordlist file already exists, the script will overwrite them.
