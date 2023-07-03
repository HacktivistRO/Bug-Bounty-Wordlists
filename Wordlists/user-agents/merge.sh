#bin/bash

echo "Merging all the user-agents-wordlist part files now"
cd part-files
cat * > user-agents-wordlist.txt
mv user-agents-wordlist.txt ..
echo "User-Agents wordlist saved as user-agents-wordlist.txt."
cd ..
echo "Do you want to remove all the part-files? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        rm -r part-files/
	echo "part-files have been deleted successfully."
else
        echo "Leaving part-files and merge script as it is."
fi