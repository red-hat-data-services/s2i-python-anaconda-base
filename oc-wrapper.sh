#!/bin/bash

APP_ROOT=/opt/app-root

case $OC_VERSION in
    3.11|3.11+|3.11.*)
        OC_VERSION=3.11
        ;;
    4.0|4.0+|4.0.*)
        OC_VERSION=4.0
        ;;
    4.1|4.1+|4.1.*)
        OC_VERSION=4.1
        ;;
    4.2|4.2+|4.2.*)
        OC_VERSION=4.2
        ;;
    4.3|4.3+|4.3.*)
        OC_VERSION=4.3
        ;;
    4.4|4.4+|4.4.*)
        OC_VERSION=4.4
        ;;
    4.5|4.5+|4.5.*)
        OC_VERSION=4.5
        ;;
    4.6|4.6+|4.6.*)
        OC_VERSION=4.6
        ;;
    *)
        OC_VERSION=4.6
        ;;
esac

exec ${APP_ROOT}/bin/oc-$OC_VERSION "$@"
