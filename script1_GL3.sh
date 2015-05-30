#! /bin/bash

aptitude search "~i $@" --disable-column -F "%p"