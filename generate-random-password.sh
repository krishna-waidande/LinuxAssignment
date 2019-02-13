#!/bin/bash

echo "Program which generates random password string of provided size"
echo "Enter the size of password"
read size
echo "Random password is :"
head /dev/urandom | tr -dc A-Za-z0-9 | head -c $size ; echo ''
