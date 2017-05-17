#!/bin/bash
<<<<<<< HEAD

API="http://localhost:4741"
URL_PATH="/surveys"
TOKEN="OmPynh2gBneOPrpgBvBgHey/NToPkvJkCYs8IWfgc70=--atKmqmQLhsVj/uiVbJSog2SNb6v1D19Qu4/zTlx/W7s="
=======
ID="591c84247cd6579770d5f234"
API="http://localhost:4741"
URL_PATH="/surveys"
TOKEN="kJ4oKiWr7ra0yFJowFSg2TFidyU1ilziJXDcNoc0ZeA=--1y3UEL38wGTnUhRPI3JP9hMO6aWKyMXrhao1Z5xY/Kc="
>>>>>>> tony-customRoute
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
<<<<<<< HEAD
  --header "Authorization: Token token=${TOKEN}"
=======
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "survey": {
      id:"'"${ID}"'"
    }
  }'
>>>>>>> tony-customRoute

echo
