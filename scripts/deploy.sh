#!/bin/sh

/scripts/deploy.sh -t helm -c engineering \
-a "--set image.tag=${CIRCLE_TAG},\
github.secret=$GITHUB_SECRET,\
github.password=$GITHUB_PASSWORD,\
github.token=$GITHUB_TOKEN,\
mongodb.mongodbRootPassword=$MONGODB_ROOT_PASSWORD,\
mongodb.mongodbUsername=$MONGODB_USERNAME,\
mongodb.mongodbPassword=$MONGODB_PASSWORD,\
mongodb.mongodbDatabase=$MONGODB_DATABASE,\
mongodb.metrics.serviceMonitor.enabled=true,\
metrics.serviceMonitor.enabled=true,\
cla ./charts/cla/."
