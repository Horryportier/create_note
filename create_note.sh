#! /bin/bash

noteFilename="$HOME/Documents/Notes/note-$(date +%Y-%m-%d).md"

if [ ! -f $noteFilename ]; then
    echo -en " tags: #IDEA\n  \n# $(date +%Y-%m-%d)" > $noteFilename
fi 

alacritty -e nvim -c "norm Go" \
   -c "norm Go---" \
   -c "norm Go## $(date +%H:%M)" \
   -c "norm Go---" \
   -c "norm G2o" \
   -c "norm zz"  \
   -c "startinsert" $noteFilename
