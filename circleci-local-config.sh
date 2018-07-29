#! /bin/bash

curl --user ${CIRCLECI_API_TOKEN_GITHUB}: \
    --request POST \
    --form revision=7d7c87e2c35df34f74f5b0cdfc47244f296c5fed \
    --form config=@config.yml \
    --form notify=false \
    https://circleci.com/api/v1.1/project/github/packtci/go-template-example-with-circle-ci/tree/master
