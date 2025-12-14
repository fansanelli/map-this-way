#!/bin/bash

TARGET="MapThisWay"
VERSION="0.135"

cat /dev/null > "$TARGET".validator.mapcss
cat <<EOF >> "$TARGET".validator.mapcss
/**********************************************/
/* Don't edit this file. It is auto generated */
/**********************************************/
meta
{
  title: "$TARGET";
  version: "$VERSION";
  description: "Controlli \"mapcss\" pensati per chi mappa in Italia";
  author: "francians";
  watch-modified: true;
}

EOF

# It will generate the MapThisWay.validator file from the validator.mapcss files in validators folder
cat validators/*/*.validator.mapcss >> "$TARGET".validator.mapcss

