#!/bin/bash

filetypes=(".md" ".doc" ".docx" ".tex" ".pdf" ".mp3" ".ogg" ".m4a" ".mp4" ".avi" ".mkv" ".jpg" ".png" ".tiff" ".tif" ".gif")

for i in "${filetypes[@]}"
do
    files=$(ls ~/ | grep $i)
    if [ -z $files ]; then
        for j in $files
        do
            if [ $i == ".md" ] || [ $i == ".doc" ] || [ $i == ".docx" ] || [ $i == ".tex" ] || [ $i == ".pdf" ]; then
                mv $j ~/Documents
            elif [ $i == ".mp3" ] || [ $i == ".ogg" ] || [ $i == ".m4a" ]; then
                mv $j ~/Audio
            elif [ $i == ".mp4" ] || [ $i == ".avi" ] || [ $i == ".mkv" ]; then
                mv $j ~/Videos
            elif [ $i == ".jpg" ] || [ $i == ".png" ] || [ $i == ".tiff" ] || [ $i == ".tif" ] || [ $i == ".gif" ]; then
                mv $j ~/Pictures
            fi
        done 
    fi
done
               
