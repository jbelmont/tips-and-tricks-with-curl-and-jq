#! /bin/bash

curl -X GET \
    --header "Accept: application/json" \
    "https://circleci.com/api/v1.1/me?circle-token=$CIRCLECI_PERSONAL_API_TOKEN" \
    | jq '.name'