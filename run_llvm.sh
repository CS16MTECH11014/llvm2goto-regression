#!/bin/bash
# A simple script
for file in /home/rasika/llvm2goto/eti/*/*.c
do
   echo "FILE : ${file}"	
   #sed -i 3's/$/ --bfs &/'  ${file}
   /home/rasika/Downloads/llvm_clang/build/bin/clang -S -g -emit-llvm ${file} -o ${file}".ll"
   /home/rasika/llvm2goto/llvm2goto ${file}".ll" -o ${file}".i"
done
