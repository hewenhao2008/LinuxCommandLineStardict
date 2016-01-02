#!/bin/bash

#STARDICT_HOME
read -p "Input the STARDICT_HOME [/opt/stardict]: " STARDICT_HOME 

[ -z "$STARDICT_HOME" ] && STARDICT_HOME=/opt/stardict

if [ -d "$STARDICT_HOME" ] && [ -f "$STARDICT_HOME/stardict" ]
then
     echo "stardict has been installed in $STARDICT_HOME"
     exit 0
fi

#check gcc
which gcc >/dev/null 2>&1 
if [ $? -ne 0 ]
then
    echo "Please install gcc"
    exit 1
fi

#compile
gcc -o stardict.exe src/stardict.c 

if [ $? -ne 0 ]
then
    echo "compile failed"
    exit 2
fi

chmod +x stardict
chmod +x stardict.exe


#create $STARDICT_HOME
[ ! -d "$STARDICT_HOME" ] && mkdir -p "$STARDICT_HOME"

#if create $STARDICT_HOME successfully to copy the files and configure it
if [ -d "$STARDICT_HOME" ]
then
    [ ! -d dicts ] && mkdir dicts
    ln -s stardict s
    cp -pfr dicts  README.md  stardict s  stardict.exe  $STARDICT_HOME/

cat >> ~/.bashrc <<__DOC__
    export STARDICT_HOME=$STARDICT_HOME
    export PATH=\$PATH:\$STARDICT_HOME
__DOC__

fi

echo "Install successfully..."
