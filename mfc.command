#!/bin/bash

# This is a program that creates a music folder hierarchy

cd "$(dirname "$0")" || return # This line is to prevent the script from executing in the home dir when double clicked
echo
echo "Hello, ""$USER"". This script will create a music folder hierarchy
in the current folder:"
pwd
echo

echo "Please choose an option below to create a hierarchy:"
echo "(1) Alphabetical"
echo "(2) By genre"
echo

echo -n "Make your choice and press [ENTER]: "
read -r flevelsort
echo

if [ "$flevelsort" == "1" ]; then
    echo "Creating alphabetical folder structure..."
    $(mkdir -p {A-E,F-J,K-O,P-T,U-Z,"#0-9"})
    $(mkdir -p A-E/{A,B,C,D,E})
    $(mkdir -p F-J/{F,G,H,I,J})
    $(mkdir -p K-O/{K,L,M,N,O})
    $(mkdir -p P-T/{P,Q,R,S,T})
    $(mkdir -p U-Z/{U,V,W,X,Y,Z})
    $(mkdir -p "#0-9"/{0..9})
    echo "Done! Thanks for using MFC :)"

elif [ "$flevelsort" == "2" ]; then
    echo "Which style would you like?"
    echo "(1) Basic genres"
    echo "(2) Basic genres + subgenres"
    echo
    echo -n "Make your choice and press [ENTER]: "
    read -r genre
    echo
    echo "Creating genre folder structure..."
    $(mkdir -p "Alternative Metal")
    $(mkdir -p "Avant-garde Metal")
    $(mkdir -p "Black Metal")
    $(mkdir -p "Death Metal")
    $(mkdir -p "Doom Metal")
    $(mkdir -p "Extreme Metal")
    $(mkdir -p "Folk Metal")
    $(mkdir -p "Glam Metal")
    $(mkdir -p "Gothic Metal")
    $(mkdir -p "Grindcore")
    $(mkdir -p "Industrial Metal")
    $(mkdir -p "Metalcore")
    $(mkdir -p "Neoclassical Metal")
    $(mkdir -p "Neue Deutsche Härte")
    $(mkdir -p "Power Metal")
    $(mkdir -p "Progressive Metal")
    $(mkdir -p "Speed Metal")
    $(mkdir -p "Stoner Metal")
    $(mkdir -p "Symphonic Metal")
    $(mkdir -p "Thrash Metal")
    $(mkdir -p "Traditional Heavy Metal")

    if [ "$genre" == "2" ]; then
        echo "Creating subgenre folder structure..."
        $(mkdir -p "Alternative Metal/"{"Funk Metal","Nu Metal","Rap Metal"})
        $(mkdir -p "Black Metal/"{"Ambient Black Metal","Atmospheric Black Metal","Blackgaze","Depressive Black Metal","Experimental Black Metal","Industrial Black Metal","Melodic Black Metal","NSBM","Progressive Black Metal","RABM","Raw Black Metal","Symphonic Black Metal","Viking Metal","War Metal"})
        # No, I won't include Unblack/White Metal, because fuck you
        $(mkdir -p "Death Metal/"{"Blackened Death Metal","Brutal Death Metal","Death 'n' Roll","Death Thrash","Melodic Death Metal","Old School Death Metal","Slam Death Metal","Symphonic Death Metal","Progressive Death Metal","Technical Death Metal"})
        $(mkdir -p "Doom Metal/"{"Black-Doom","Death-Doom","Drone Metal","Epic Doom","Funeral Doom","Proto-Doom","Sludge Doom","Stoner Doom"})
        $(mkdir -p "Folk Metal/"{"Celtic Metal","Medieval Metal","Pagan Metal","Pirate Metal"})
        $(mkdir -p "Glam Metal/"{"Bubbleglam","Nu-glam","Power Pop","Sleaze"})
        $(mkdir -p "Grindcore/"{"Deathgrind","Goregrind","Pornogrind"})
        $(mkdir -p "Metalcore/"{"Deathcore","Mathcore","Thrashcore"})
        $(mkdir -p "Progressive Metal/Djent")
        $(mkdir -p "Thrash Metal/"{"Crossover Thrash","Groove Metal","Teutonic Thrash"})
    fi
    echo
    echo "Done! Thanks for using MFC :)"
fi
