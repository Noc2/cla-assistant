#!/bin/bash

source /scripts/common.sh
source /scripts/bootstrap-helm.sh


run_tests() {
    echo Running tests...

    wait_pod_ready cla-assistant
}

teardown() {
    helm delete --purge cla-assistant
}

main(){
    if [ -z "$KEEP_W3F_CLA_ASSISTANT" ]; then
        trap teardown EXIT
    fi

    /scripts/build-helm.sh \
        --set environment=ci \
        --set image.tag="${CIRCLE_SHA1}" \
        cla-assistant \
        ./charts/cla

    run_tests
}

main
