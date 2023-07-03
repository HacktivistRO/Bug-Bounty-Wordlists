#bin/bash

echo "Merging all the common passwords wordlist part files now"
cd part-files
cat * > common_passwords-wordlist.txt
mv common_passwords-wordlist.txt ..
echo "Common passwords wordlist saved as common_passwords-wordlist.txt."
cd ..
echo "Do you want to remove all the part-files? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        rm -r part-files/
	echo "part-files have been deleted successfully."
else
        echo "Leaving part-files and merge script as it is."
fi