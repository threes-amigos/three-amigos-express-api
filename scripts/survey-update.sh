#!/bin/bash

API="http://localhost:4741"
URL_PATH="/surveys"
ID="591b3ad3af27d940f6b38f6f"
TOKEN="OmPynh2gBneOPrpgBvBgHey/NToPkvJkCYs8IWfgc70=--atKmqmQLhsVj/uiVbJSog2SNb6v1D19Qu4/zTlx/W7s="
TEXT="UPDATE THE NAME"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "survey": {
      "name": "'"${TEXT}"'"
    }
  }'

echo
