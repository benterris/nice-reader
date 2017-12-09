#!/bin/bash

# set the install directory
script=`cat nice-reader`
here=`pwd`
matchInstallDir="installDir=\""

script="${script%%${matchInstallDir}*}${matchInstallDir}${here}${script##*${matchInstallDir}}"

# setup the command
dest=/usr/bin/nice-reader
if ! [ -f "$dest" ]
then
  sudo touch "$dest"
  echo "$script" > "$dest"
  sudo chmod +x /usr/bin/nice-reader
else
  echo "Error : another program is called nice-reader..."
fi
