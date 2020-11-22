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

# "ensemble" calls "measurement"

if [ "$#" -ne 4 ]; then
  echo "the number of arguments for $0 is $# (not 4), so internally-specified values for variables are used"
  first="hello"
  second="bye"
  third="norm"
  iterations=3
else
  echo "correct number of arguments (4) passed in to $0, so using those"
  first="$1"
  second="$2"
  third="$3"
  iterations="$4"
fi

# maximum number of processes is
# cat /proc/sys/kernel/pid_max

for ((i = 1; i <= "${iterations}"; i++ )); do
   (./measure.sh "${first}" "${second}" "${third}") &
done
