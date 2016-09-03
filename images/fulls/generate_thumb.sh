#!/bin/sh

for i in *.jpg
  if [ -a ../thumbs/$i ]
  then
    echo -e "Thumb $i exists. Ignoring it."
  else
    echo -e "Converting $i to go in ../thumbs/$i"
    convert $i -resize 360 ../thumbs/$i
  fi
end
