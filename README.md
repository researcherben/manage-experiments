# manage-experiments
manage experiments using bash

each script can be run stand-alone with no arguments.

Alternatively, command-line arguments can be used for a given script

Alternatively, one script can run another. 

* "measurement" runs a single experiment with a single configuration once
* "ensemble" runs multiple instances of the same experiment by running "measurement" repeatedly for a fixed configuration
* "parameter sweep" runs multiple configurations and multiple instances per configuration by running "ensemble" for different configurations
