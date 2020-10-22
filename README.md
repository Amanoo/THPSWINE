# THPSWINE
## compile.sh
compile.sh is a bash script that will compile a THPS1+2 compatible WINE from source, including required patches and DLLs. It will also download the Epic Games Store and launch it. Installation will occasionally require some user input. When the compiler asks to install patches, use Y to apply patches. Default option is N.

Dependencies are git and whatever https://github.com/Frogging-Family/wine-tkg-git.git needs in order to compile. Wine-tkg source includes a PKGBUILD file, which some distros can use to resolve dependencies.
