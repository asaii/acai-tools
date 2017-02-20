# Update Raspberry Pi

sudo rpi-update

# Installing Chromium

wget -qO - http://bintray.com/user/downloadSubjectPublicKey?username=bintray | sudo apt-key add -
echo "deb http://dl.bintray.com/kusti8/chromium-rpi jessie main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install chromium-browser rpi-youtube -y

# Download this file
# http://www.mediafire.com/download/0i6v4 ... h21.tar.xz

cd ~/Downloads
tar -xJf flash21.tar.xz
cd pepper
sudo cp *.so /usr/lib/chromium-browser
sudo cp *.json /usr/lib/chromium-browser

sudo nano /etc/chromium-browser/customizations/01-pepper

# Enter this line
# CHROMIUM_FLAGS="${CHROMIUM_FLAGS} --ppapi-flash-path=/usr/lib/chromium-browser/libpepflashplayer.so --ppapi-flash-version=21.0.0.182-r1 -password-store=detect -user-data-dir"

# Save with CTRL-o and close with CTRL-x

# Installing Node and setting the latest version

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.28.0/install.sh | bash
source ~/.profile
nvm install v5.3.0
nvm alias default v5.3.0
nvm use default

# Installing Fploof files
git clone https://github.com/asaii/fploof
cd fploof
sudo npm install ws

# Installing Ngrok
wget -q0 https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngork.zip
