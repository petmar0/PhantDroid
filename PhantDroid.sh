#!/bin/bash

dataFile="data.txt"
publicKey="VGoE7n5aZ7CxRMnGJJ40"
privateKey="9YG0J8zjRJfNgw0eooBV"
v1=$(tail $dataFile | grep v1 )
v2=$(tail $dataFile | grep v2 )
v3=$(tail $dataFile | grep v3 )
v4=$(tail $dataFile | grep v4 )
v5=$(tail $dataFile | grep v5 )
v6=$(tail $dataFile | grep v6 )
v7=$(tail $dataFile | grep v7 )
v8=$(tail $dataFile | grep v8 )

curl -G "http://data.sparkfun.com/input/$publicKey?private_key=$privateKey&$v1&$v2&$v3&$v4&$v5&$v6&$v7&$v8"