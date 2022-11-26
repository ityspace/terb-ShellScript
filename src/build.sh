#!/bin/bash

echo "Building ..."
test -d tmp || mkdir tmp
echo "Loading"
echo "#!/bin/bash" > config.sh
cat config >> config.sh
bash ~/.config/terb/src/lib/xml.sh > public/feed.xml
bash ~/.config/terb/src/lib/home.sh > public/index.html
bash ~/.config/terb/src/lib/list.sh
bash ~/.config/terb/src/lib/archive.sh > public/archive.html
bash ~/.config/terb/src/lib/page.sh
rm -rf tmp
rm -rf config.sh
echo "Static files are saved at public/"
echo -e "\033[36mSuccess!\033[0m"