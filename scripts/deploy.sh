#!/bin/sh

./scripts/deploy.sh -t helm -c engineering -a "--set image.tag=${CIRCLE_TAG} --set github.secret=$GITHUB_SECRET --set github.password=$GITHUB_PASSWORD --set github.token=$GITHUB_TOKEN --set mongodb.mongodbRootPassword=$CLA_DB_PASS --set claAssistant.uri=$CLA_DB_URL --name cla ./charts/cla/."
