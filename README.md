# THPSWINE
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
    wine-tkg-git/non-makepkg-build.sh
