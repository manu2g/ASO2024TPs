#!/bin/bash

echo "piedra papel o tijera!"

piedra=1
papel=2
tijera=3
cpu=$(shuf -i1-3 -n1)

echo "elegi tu opcion del 1 al 3, siendo piedra (1), papel (2), tijera (3)"
read usuario

if [[ $usuario == 1 ]]; then
    echo "elegiste piedra"
    if [[ $cpu == 2 ]]; then
    echo "la cpu elegio papel"
    echo "gana cpu"
    elif [[ $cpu == 3 ]]; then
    echo "la cpu elegio tijera"
    echo "gana usuario"
    else 
    echo "la cpu elegio lo mismo!"
    echo "empate"
    fi
elif [[ $usuario == 2 ]]; then
echo "elegiste papel"
    if [[ $cpu == 3 ]]; then
    echo "la cpu elegio tijera"
    echo "gana cpu"
    elif [[ $cpu == 1 ]]; then
    echo "la cpu elegio piedra"
    echo "gana usuario"
    else
    echo "la cpu elegio lo mismo!"
    echo "empate"
    fi
elif [[ $usuario == 3 ]]; then
    echo "elegiste tijera"
    if [[ $cpu == 1 ]]; then
    echo "la cpu elegio piedra"
    echo "gana cpu"
    elif [[ $cpu == 2 ]]; then
    echo "la cpu elegio papel"
    echo "gana usuario"
    else
    echo "la cpu elegio lo mismo!"
    echo "empate"
    fi
else
    echo "valor invalido"
fi