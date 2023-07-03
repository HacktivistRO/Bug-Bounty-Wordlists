#bin/bash

echo "Merging all the directories wordlist part files now"
cd part-files
cat * > common_directories-wordlist.txt
mv common_directories-wordlist.txt ..
echo "Directories wordlist saved as common_directories-wordlist.txt."
cd ..
echo "Do you want to remove all the part-files? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        rm -r part-files/
	echo "part-files have been deleted successfully."
else
        echo "Leaving part-files and merge script as it is."
fi