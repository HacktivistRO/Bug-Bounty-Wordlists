#bin/bash

echo "Merging all the subdomains wordlist part files now"
cd part-files
cat * > subdomains-wordlist.txt
mv subdomains-wordlist.txt ..
echo "Subdomains wordlist saved as subdomains-wordlist.txt."
cd ..
echo "Do you want to remove all the part-files? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        rm -r part-files/
	echo "part-files have been deleted successfully."
else
        echo "Leaving part-files and merge script as it is."
fi