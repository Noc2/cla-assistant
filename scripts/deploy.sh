#!/bin/sh

/scripts/deploy.sh -t helm -c engineering -a "\
 --set image.tag=${CIRCLE_TAG}\
 --set github.client=$GITHUB_CLIENT\
 --set github.secret=$GITHUB_SECRET\
 --set github.user=$GITHUB_USER\
 --set github.token=$GITHUB_TOKEN\
 --set github.admins=$GITHUB_ADMINS\
 --set mongodb.mongodbPassword=$CLA_DB_PASS\
 --set mongodb.mongodbRootPassword=$CLA_DB_PASS\
 --set mongodb.mongodbDatabase=cla\
 --set mongodb.mongodbUsername=cla\
 --set claAssistant.uri=$CLA_DB_URL\
 --set metrics.serviceMonitor.enabled=$SERVICE_MONITOR\
 --set mongodb.metrics.serviceMonitor.enabled=$SERVICE_MONITOR\
 cla ./charts/cla/."
