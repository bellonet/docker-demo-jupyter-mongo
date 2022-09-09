#!/bin/bash
echo "########### Loading data to Mongo DB ###########"
mongoimport --db ecg_db --collection patients --file /tmp/data/1.json
mongoimport --db ecg_db --collection patients --file /tmp/data/2.json
