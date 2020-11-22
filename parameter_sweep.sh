#!/bin/bash

#set -uxe
# -u  Treat unset variables as an error when performing
#        parameter expansion. An error message will be written
#        to the standard error, and a non-interactive shell will exit.
# -x  Print a trace of simple commands and their arguments
#        after they are expanded and before they are executed.
# -e  Exit immediately if a simple command exits with a non-zero status, unless
#        the command that fails is part of an until or  while loop, part of an
#        if statement, part of a && or || list, or if the command's return status
#        is being inverted using !.

# "parameter_sweep" calls "ensemble" calls "measurement"

if [ "$#" -ne 3 ]; then
  echo "number of arguments for $0 is $# (not 4), so variables are set internally"
  second="bye"
  third="norm"
  iterations=3
else
  echo "correct number of arguments (4) passed in to $0, so using those"
  second=$1
  third=$2
  iterations=$3
fi

# Declare an array of string with type
declare -a StringArray=("Linux Mint" "Fedora" "Red Hat Linux" "Ubuntu" "Debian" )

# Iterate the string array using for loop
for val in "${StringArray[@]}"; do
   echo "${val}"
   ./ensemble.sh "${val}" "${second}" "${third}" "${iterations}"
done
