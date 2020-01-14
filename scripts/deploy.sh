#!/bin/sh

/scripts/deploy.sh -t helm -c engineering \
                   -a "--set image.tag=${CIRCLE_TAG},  -f ./charts/cla/production-values.yaml cla w3f/cla-assistant"
