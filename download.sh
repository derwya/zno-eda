#!/bin/bash

DIR="./data"

if [[ ! -d "$DIR" ]]; then
  mkdir -p "$DIR"
fi

curl -L -o "${DIR}/ukraine-area.zip" https://www.kaggle.com/api/v1/datasets/download/mariia01011/ukraine-area
unzip "${DIR}/ukraine-area.zip"

if [ "$#" -eq 0 ]; then
  echo "Downloads ZNO dataset(s) from given year(s). 7zz is required."
  echo "Usage: bash download.sh <year1> <year2> <year3> ..."
  exit 1
fi

for arg in "$@"; do
  if [[ "$arg" -ge 2016 && "$arg" -le 2021 ]]; then
    wget -P "$DIR" "https://zno.testportal.com.ua/yearstat/uploads/OpenDataZNO${arg}.7z"
    7zz x "${DIR}/OpenDataZNO${arg}.7z" -o"$DIR"
    rm "${DIR}/OpenDataZNO${arg}.7z"
  else
    echo "No data available for ${arg} year."
  fi
done
