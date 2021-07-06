#!/bin/sh

######################################################################
# @author      : jamesd (jamesd@$HOSTNAME)
# @file        : template
# @created     : Tuesday Jul 06, 2021 13:48:34 PDT
#
# @description : 
######################################################################

while getopts 'd:' OPTION; do
    case "$OPTION" in
        d)
            echo "dragonruby"
            cp -r ~/Templates/dragonruby/mygame $OPTARG
            ;;
        ?)
            echo "invalid argument"
    esac
done
