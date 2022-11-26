#!/bin/bash -e
#Code by Ciau zi-yuam in 2022
#Started at 2022-11-26, 20:58 (GMT+8:00)

#setVar
export bin="$PREFIX/bin" #Suit for Termux.
export yellow="\033[33m"
export red="\033[31m"
export green="\033[32m"
export done="\033[0m"
export notice="${yellow}[+] NOTICE:${done} "
export normal="${green}[+] NORMAL: ${done}"
export error="${red}[+] ERROR: ${done}"
#checkEnv

metList="git"
echo -e "${notice}Checking your installation environment ..."
for stuff in $metList
do
    echo -e "${notice}Checking if the [$stuff] is exist ..."
    if [ ! -f "${bin}/${stuff}" ]; then
    echo -e "${error}Please installed the [${stuff}] before you start !"
    exit 2
else
  echo -e "${normal}Awsome! The [$stuff] is existing."
fi
done

#Check
if [ -f "$bin/sudo" ]; then
  if [ -f "$bin/su" ]; then
    echo -e ${yellow}"若无法安装，请手动运行'sudo' 或 'su' 以授权Terb安装权限"${done}
  fi
fi

test -d ~/.config || mkdir ~/.config

#func
#getStart

Download() {
  git clone https://github.com/ityspace/terb
  mv terb/ ~/.config/terb
  rm -rf terb
  chmod 777 ~/.config/terb
}
echo -e "${notice}Your installation will started in few sec ..."
echo -e "${notice}Cloning the project of TERB ..."
Download
