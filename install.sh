#!/usr/bin/env bash

PATH_MODULES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../../"
[ ! -d $PATH_MODULES/drassil/joiner ] && git clone https://github.com/drassil/joiner $PATH_MODULES/drassil/joiner -b master
source "$PATH_MODULES/drassil/joiner/joiner.sh"

NAME="java-lib-common"
VENDOR="hw-core"

mod_path="hw-core/js-modules/"

#
# ADD DEPENDENCIES
#

Joiner:add_file "http://www.java2s.com/Code/JarDownload/javax.servlet/javax.servlet-3.0.jar.zip"      "$modpath/javax/servlet/javax.servlet-3.0.jar.zip" && unzip "$modpath/javax/servlet/javax.servlet-3.0.jar.zip"

if Joiner:with_dev ; then
    # nothing to do for now
fi
