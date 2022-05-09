#!/bin/bash

echo "Text Creator v1.0"
echo "© Tommeeboi 2022"

echo "Would you like to create a folder first? (y/n)"
read hmm
echo ""

if [ $hmm == "y" ]
then
echo "Type the path where you want your new folder to be created. (Not as a string)"
echo "The new directory cannot have spaces, but you can rename it afterwards."
echo "For example: C:/Users/Tommeeboi/directory"
read mkPath
mkdir $mkPath
fi

echo "Let's Continue."
echo ""
echo "Type the name of your new txt file. (Don't put the file extension)"
read fileName
echo ""
echo "Type the path where you want your new file to be created. (Not as a string)"
echo "Do not include the text file."
read pathName
echo ""
echo "Is this the path you want?"
echo "'$pathName/$fileName.txt'"
echo ""
echo "Hit enter to continue, or Ctrl+C to exit if your path is incorrect."
read nothing

echo ""
echo "Creating new txt file..."
touch "$pathName/$fileName.txt"
echo "$fileName.txt successfully created in $pathName"

echo ""
echo "Would you like to add text to your new file? (y/n)"
read whyOrEn
if [ $whyOrEn == "y" ]
then
echo ""
echo "Type the text you wish to add."
read textContent
echo ""
echo "Adding text to $fileName.txt..."
echo $textContent > "$pathName/$fileName.txt"
echo "Text successfully added to $fileName.txt"
fi

echo ""
echo "Thank you for using Text Creator!"
echo "Hit enter to exit."
read alsoNothing