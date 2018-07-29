#! /bin/bash

curl -X GET \
    --header "Accept: application/json" \
    "https://circleci.com/api/v1.1/recent-builds?circle-token=$CIRCLECI_PERSONAL_API_TOKEN&limit=20&offset=5"