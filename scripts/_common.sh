#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

manual_install_psql16() {
    deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main
    wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
    apt update
}