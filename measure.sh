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

# this script will run without command-line parameters by assuming valid input values
if [ "$#" -ne 3 ]; then
  echo "the number of arguments for $0 is $# (not 3), so internally-specified values for variables are used"
  first="hello"
  second="bye"
  third="norm"
else
  # the relevance of this capability is to enable other scripts to use this script
  echo "the correct number of arguments (3) passed into $0, so using those"
  first=$1
  second=$2
  third=$3
fi

fldr_name="measurement_`date '+%Y-%m-%d_%H-%M-%S'`_$RANDOM"

echo "$0 says first is ${first} and then ${second} and finally ${third} for this one, also $RANDOM"
