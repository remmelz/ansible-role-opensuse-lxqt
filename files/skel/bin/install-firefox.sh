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

mkdir -p applications
echo "Creating application file..."
echo '[Desktop Entry]' > applications/myfirefox.desktop
echo 'Categories=Network;WebBrowser;GTK;' >> applications/myfirefox.desktop
echo 'Encoding=UTF-8' >> applications/myfirefox.desktop
echo 'Name=My Firefox' >> applications/myfirefox.desktop
echo 'GenericName=Web Browser' >> applications/myfirefox.desktop
echo 'Comment=Web Browser' >> applications/myfirefox.desktop
echo 'Exec=~/.local/share/firefox/firefox %u' >> applications/myfirefox.desktop
echo 'Icon=web-browser' >> applications/myfirefox.desktop
echo 'Terminal=false' >> applications/myfirefox.desktop
echo 'StartupNotify=true' >> applications/myfirefox.desktop
echo 'MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;application/x-xpinstall;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;' >> applications/myfirefox.desktop
echo 'Type=Application' >> applications/myfirefox.desktop

rm -f firefox-latest.tar.bz2

exit 0
