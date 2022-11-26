#!/bin/bash

test -d public && echo "\033[31mError: public directory is exist!\033[0m" && exit 0

test -d posts && echo "\033[31mError: posts directory is exist!\033[0m" && exit 0

mkdir public
mkdir posts

read -p "Domain (https://example.com): " Domain
read -p "Title: " Title
read -p "Description: " Description
read -p "Author: " Author

echo "DOMAIN=\"$Domain\"" > config
echo "TITLE=\"$Title\"" >> config
echo "DESCRIPTION=\"$Description\"" >> config
echo "AUTHOR=\"$Author\"" >> config

cp ~/.config/terb/src/rss.xsl public/rss.xsl

echo "\033[36mFinish!\033[0m"
