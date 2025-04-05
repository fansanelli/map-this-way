#!/bin/bash

VERSION="0.132"

cat /dev/null > MapThisWay.validator.mapcss
cat <<EOF >> MapThisWay.validator.mapcss
/**********************************************/
/* Don't edit this file. It is auto generated */
/**********************************************/
meta
{
  title: "MapThisWay";
  version: "$VERSION";
  description: "Map This Way";
  author: "francians";
  watch-modified: true;
}

EOF

# It will generate the MapThisWay.validator file from the validator.mapcss files in validators folder
cat validators/*/*.validator.mapcss >> MapThisWay.validator.mapcss
