#!/bin/bash

# Simple script to assemble and run asm file with NASM.

function assemblePgm(){
  nasm -f elf64 "${1}.asm"
  ld "${1}.o" -o "${1}"
  if [ $? -eq 0 ]; then
    echo "Assemble and Link successful for ${1}.asm"
    return 0;
  else
    echo "Error: Assemble or Link failed for ${1}.asm"
    return 1;
  fi
}

function executePgm(){
    echo "Executing ${1}"
    echo ""
    ./"${1}"
}

if [ $# -eq 0 ]; then
  echo "No arguments supplied."
else
  if [ -e $1 ]; then
      noExt="$(echo "$1" | rev | cut -d"/" -f1 | rev | cut -d"." -f1)"
      if assemblePgm $noExt; then
        executePgm $noExt
      else
        echo "Error: Executable not created."
      fi
  else
    echo "Error: File not found."
  fi
fi