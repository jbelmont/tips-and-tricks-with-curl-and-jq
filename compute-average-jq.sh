#! /bin/bash

curl -X GET \
    --header "Accept: application/json" \
    "https://circleci.com/api/v1.1/recent-builds?circle-token=$CIRCLECI_PERSONAL_API_TOKEN&limit=20&offset=5" \
    | jq '(reduce .[].build_time_millis as $build_time (0; . + $build_time) ) / length'