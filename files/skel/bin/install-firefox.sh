#!/bin/bash

url="https://download.mozilla.org/"
product="product=firefox-latest-ssl"
version="os=linux64&lang=en-US"

cd ~/.local/share || exit 1

if [[ -d ./firefox ]]; then
  echo "Firefox already installed."
  exit 1
fi

wget -q --show-progress \
  -O firefox-latest.tar.bz2 \
  "${url}?${product}&${version}"

if [[ ! -f firefox-latest.tar.bz2 ]]; then
  echo "Error: downloaded file not found."
  exit 1
fi

tar xjvf firefox-latest.tar.bz2

if [[ ! -d ./firefox ]]; then
  echo "Error: unpacked Firefox directory not found."
  exit 1
fi

echo "Creating application file..."
echo '[Desktop Entry]' > applications/firefox.desktop
echo 'Categories=Network;WebBrowser;GTK;' >> applications/firefox.desktop
echo 'Encoding=UTF-8' >> applications/firefox.desktop
echo 'Name=Firefox' >> applications/firefox.desktop
echo 'GenericName=Web Browser' >> applications/firefox.desktop
echo 'Comment=Web Browser' >> applications/firefox.desktop
echo 'Exec=~/.local/share/firefox/firefox %u' >> applications/firefox.desktop
echo 'Icon=firefox' >> applications/firefox.desktop
echo 'Terminal=false' >> applications/firefox.desktop
echo 'StartupNotify=true' >> applications/firefox.desktop
echo 'MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;application/x-xpinstall;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;' >> applications/firefox.desktop
echo 'Type=Application' >> applications/firefox.desktop

rm -f firefox-latest.tar.bz2

exit 0
