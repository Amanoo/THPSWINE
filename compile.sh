#!/usr/bin/bash
git clone https://github.com/Frogging-Family/wine-tkg-git.git
cd wine-tkg-git/
git checkout cad02b4753e7eb5177e7714c78b3c08e18cf5d32
rm -r proton-tkg/
wget https://github.com/ValveSoftware/Proton/files/5246885/patches.zip
unzip patches.zip
for f in *.patch; do     mv -- "$f" "${f%.patch}.mypatch"; done
mv *.mypatch wine-tkg-git/wine-tkg-userpatches/
sed -i 's/_use_vkd3dlib="mainline"/_use_vkd3dlib="fork"/' wine-tkg-git/customization.cfg
sed -i 's/_staging_version=""/_staging_version="003d5833"/' wine-tkg-git/customization.cfg
cd wine-tkg-git
./non-makepkg-build.sh
cd ../..
mkdir thps
export WINEPREFIX=$PWD/thps
winecfg
winetricks arial
winetricks cjkfonts
winetricks vcrun2019
winetricks dotnet40
winetricks dotnet48
winetricks d3dcompiler_43
winetricks d3dcompiler_47
winetricks d3dx9
wget https://github.com/doitsujin/dxvk/releases/download/v1.7.2/dxvk-1.7.2.tar.gz
tar -xzf dxvk-1.7.2.tar.gz
dxvk-1.7.2/setup_dxvk.sh install
git clone https://github.com/z0z0z/mf-install
mf-install/mf-install.sh
mv wine-tkg-git/wine-tkg-git/non-makepkg-builds/wine-tkg-staging-fsync-vkd3d-git-5.17.2.r4.g003d5833/ ./wine-tkg-5.17.2
rm -r wine-tkg-git/
wget https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi
wine-tkg-5.17.2/bin/wine msiexec /i EpicGamesLauncherInstaller.msi 
echo "WINEPREFIX=$WINEPREFIX $PWD/wine-tkg-5.17.2/bin/wine \"$WINEPREFIX/drive_c/Program Files (x86)/Epic Games/Launcher/Portal/Binaries/Win32/EpicGamesLauncher.exe\" \"-opengl\"" >> startEGS.sh
chmod +x startEGS.sh
echo "You can launch Epic Game Store by running $PWD/startEGS.sh"
