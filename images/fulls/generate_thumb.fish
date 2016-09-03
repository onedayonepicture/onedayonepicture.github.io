#!/bin/fish

for i in *.jpg
  if test -e "../thumbs/$i"
    echo -e "Ignoring $i. thumbs already exists."
  else
    echo -e "Generating thumb for $i"
    convert ./$i -resize 360 ../thumbs/$i
  end
end
