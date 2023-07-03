#bin/bash

echo "Merging all the usernames part files now"
cd part-files
cat * > usernames-wordlist.txt
mv usernames-wordlist.txt ..
echo "Usernames wordlist saved as usernames-wordlist.txt."
cd ..
echo "Do you want to remove all the part-files? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        rm -r part-files/
	echo "part-files have been deleted successfully."
else
        echo "Leaving part-files and merge script as it is."
fi