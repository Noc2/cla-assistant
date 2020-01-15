#!/bin/sh

/scripts/deploy.sh -t helm -c engineering -a "--set image.tag=${CIRCLE_TAG} --set claAssistant.host=$CLA_ASSISTANT_HOST --set github.secret=$GITHUB_SECRET --set github.password=$GITHUB_PASSWORD --set github.token=$GITHUB_TOKEN cla ./charts/cla/."
