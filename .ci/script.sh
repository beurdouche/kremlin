#!/bin/bash

set -e

eval $(opam config env)
export Z3=z3-4.4.1-x64-ubuntu-14.04;
export PATH=/home/travis/build/FStarLang/kremlin/$Z3/bin:$PATH;
export PATH=/home/travis/build/FStarLang/kremlin:$PATH;
export PATH=/home/travis/build/FStarLang/kremlin/fstar/bin:$PATH;

echo -e "\e[31m=== Some info about the environment ===\e[0m"
ocamlfind ocamlopt -config

make test