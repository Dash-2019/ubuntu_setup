#!/bin/bash
<< COMMENTOUT
#curl url |sh -s
#url= https://raw.githubusercontent.com/Dash-2019/pc_setup/master/Ubuntu_Basic.sh
#ロックスクリーンを無効に。以下のコマンドを実行します。
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
#サスペンド時の画面ロックを無効。
gsettings set org.gnome.desktop.screensaver ubuntu-lock-on-suspend false
#ブランクスクリーンからの復帰時の設定。
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false



# 1 barrier sharemouse
sudo apt update
sudo apt install snapd
sudo snap install barrier

# 2 ssh server------------------
#sudo apt install openssh-server
echo 1907 | sudo -S apt install openssh-server -y
sudo systemctl start ssh
sudo systemctl enable ssh


# 3--git
sudo apt install git -y


sudo apt install -y vlc
COMMENTOUT

#-2 Atom ------------------------------------
sudo apt update
yes | sudo snap install atom --classic

#-3  chromium--------------------------------
sudo apt install -y chromium-browser
#yes | sudo snap install chromium
