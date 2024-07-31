#!/bin/bash
echo "Writing in 2s..."
sleep 2

xclip -o | pup -p '.ace_content' text{}  > tmp.html

cat tmp.html |  tr -d '\n' | tr -s '  ' > tmp2.html
xdotool type --delay 0 --window 0x2e0003d --file tmp2.html
rm tmp2.html tmp.html
