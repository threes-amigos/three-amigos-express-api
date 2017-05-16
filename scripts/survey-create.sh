#!/bin/bash

API="http://localhost:4741"
URL_PATH="/surveys"
TOKEN="OmPynh2gBneOPrpgBvBgHey/NToPkvJkCYs8IWfgc70=--atKmqmQLhsVj/uiVbJSog2SNb6v1D19Qu4/zTlx/W7s="
NAME="MY First Survey"
URL="Test URL"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "surveySchema": {
      "name": "'"${NAME}"'",
      "url": "'"${URL}"'"
    }
  }'

echo
