# THPSWINE
Install expect

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

 -> ###################################TkG##########was##########here
When you are ready, press enter to continue.
<Enter>


HEAD is now at 2cf69bb5a5b dmband: Avoid cloning stream in parse_bands_list.
 ==> WARNING: HALP! We got some hotfixes for your current tree!
Do you want to apply them all with no further prompt?
> Y/n : 
<Enter>


/home/marco/Desktop/experimenteer/wine-tkg-git/wine-tkg-git/0001-server-Support-noname-named-pipes.mypatch
/home/marco/Desktop/experimenteer/wine-tkg-git/wine-tkg-git/0002-msvcrt-Use-default-user-locale-when-only-codepage-is.mypatch
/home/marco/Desktop/experimenteer/wine-tkg-git/wine-tkg-git/0003-msasn1-Fix-buffer-allocations.mypatch
Do you want to install it/them? - Be careful with that ;)
> N/y : 
y<Enter>



https://superuser.com/questions/585398/sending-simulated-keystrokes-in-bash
expect
https://likegeeks.com/expect-command/

    mkdir thps
    export WINEPREFIX=$PWD/thps
    winecfg
    wget https://github.com/doitsujin/dxvk/releases/download/v1.7.2/dxvk-1.7.2.tar.gz
    tar -xzf dxvk-1.7.2.tar.gz
    dxvk-1.7.2/setup_dxvk.sh install

    git clone https://github.com/z0z0z/mf-install
    mf-install/mf-install.sh


    
