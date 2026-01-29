#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
DIR="$(cd "$(dirname "$0")" && pwd)"


clear
cat <<EOF | lolcat
▐▓█▀▀▀▀▀▀▀▀▀█▓▌░▄▄▄▄▄░
▐▓█░░▀░░▀▄░░█▓▌░█▄▄▄█░
▐▓█░░▄░░▄▀░░█▓▌░█▄▄▄█░
▐▓█▄▄▄▄▄▄▄▄▄█▓▌░█████░
░░░░▄▄███▄▄░░░░░█████░
EOF
echo "Made By Decoded_191" | lolcat
echo "   Version:1.0.0   " | lolcat
echo -e "${YELLOW}1. Kali Style${NC}"
echo -e "${YELLOW}2. Hacker Style${NC}"
echo -e "${YELLOW}3. Random Style (Surprise!)${NC}"
echo -e "${YELLOW}4. Devil Style${NC}"
echo -e "${YELLOW}5. Skull Style${NC}"
echo -e "${YELLOW}6. PC Hacker Style${NC}"
echo -e "${RED}0. Exit${NC}"
echo -e "${GREEN}================================${NC}"
read -p "Select an option : " choice

case $choice in
    1)
        selected="kali.txt"
        ;;
    2)
        selected="hacker.txt"
        ;;
    3)
        
        
        selected=$(ls $DIR/*.txt | shuf -n 1)
        
        ;;
4)
selected="devil.txt"
;;
5)
selected="skull.txt"
;;
6)
selected="pch.txt"
;;
    0)
        exit
        ;;
    *)
        echo "Invalid Option!"
        exit
        ;;
esac




sed -i '/clear/d' ~/.bashrc
sed -i '/cat.*\.txt/d' ~/.bashrc

if [[ $choice == "3" ]]; then
    # Pehle screen clear hogi, fir banner aayega
    echo "clear" >> ~/.bashrc
    echo "cat $selected | lolcat" >> ~/.bashrc
    filename=$(basename $selected)
    echo -e "${GREEN}Done! Randomly select hua hai${NC}"
else
    echo "clear" >> ~/.bashrc
    echo "cat $DIR/$selected | lolcat" >> ~/.bashrc
    echo -e "${GREEN}Success! style set ho gaya hai.${NC}"
fi

