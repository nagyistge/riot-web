#!/bin/bash

echo "// autogenerated by rethemendex.sh" > _components.scss

for i in `find . -iname _\*.scss | fgrep -v _components.scss`;
do
    echo "@import \"$i\";" >> _components.scss
done