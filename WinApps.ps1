# SSH Server
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
Start-Service sshd

# install Scoop choco管理者権限で実行-----------------------
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# add bucket-------------------------------------------
scoop bucket add extras
scoop bucket add versions
scoop bucket add sysinternals
scoop bucket add dorado https://github.com/chawyehsu/dorado
scoop bucket add iyokan-jp https://github.com/tetradice/scoop-iyokan-jp
scoop bucket add nonportable
# basic module -------------------------------------------
scoop install 7zip aria2 git sudo #basic module
scoop install anydesk autologon f.lux
#scoop install barrier espanso
scoop install beeftext everything strokesplus
scoop install brave googlechrome
scoop install eartrumpet
scoop install foxit-pdf-reader
scoop install greenshot irfanview xnviewmp
#全文検索Groonga
scoop install inazumasearch 
scoop install keepassxc
scoop install libreoffice
scoop install mery notepadplusplus vscode sublime-text atom
scoop install potplayer vlc

# install choco ------------------------------------
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install powershell-core -y
choco install bitcomet -y
choco install clipboardfusion -y
choco install displayfusion -y
#choco install mousewithoutborders -y
choco install googledrive -y
choco install qdir -y
choco install rlogin -y
#choco install avastfreeantivirus

#choco install anaconda3 -y
# PDF OCR 
choco install tesseract poppler

