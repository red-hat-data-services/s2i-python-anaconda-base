#!/bin/bash

APP_ROOT=/opt/app-root

case $OC_VERSION in
    3.10|3.10+|3.10.*)
        OC_VERSION=3.10
        ;;
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
    *)
        OC_VERSION=4.1
        ;;
esac

exec ${APP_ROOT}/bin/oc-$OC_VERSION "$@"
