#!/bin/bash

echo "Choose what to do"

choice="Encrypt Decrypt"

select option in $choice; do
        if [ $REPLY = 1 ];
then
        echo "Which file you want to encrypt"
        read file;
        gpg -c $file
        echo "encryption completed"
        exit
else
        echo  "Which file you want to decrypt"
        read file2;
        gpg -d $file2
        echo "decryption completed"
        exit
fi

done
