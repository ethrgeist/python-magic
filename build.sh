
LIBMAGIC_TARGET_DIR=magic/libmagic
DOWNLOAD_CACHE=download

mkdir -p ${DOWNLOAD_CACHE}

# windows 64
rm -rf ${LIBMAGIC_TARGET_DIR}/*
rm -rf build
wget https://github.com/julian-r/file-windows/releases/download/v5.32/file_5.32-vs2015-x64.zip
unzip file_5.32-vs2015-x64.zip -d ${LIBMAGIC_TARGET_DIR}
rm file_5.32-vs2015-x64.zip
python setup.py bdist_wheel -p win-amd64

# windows 32
rm -rf ${LIBMAGIC_TARGET_DIR}/*
rm -rf build
wget https://github.com/julian-r/file-windows/releases/download/v5.32/file_5.32-vs2015-x86.zip
unzip file_5.32-vs2015-x86.zip -d ${LIBMAGIC_TARGET_DIR}
rm file_5.32-vs2015-x86.zip
python setup.py bdist_wheel -p win32

# macos
rm -rf ${LIBMAGIC_TARGET_DIR}/*
rm -rf build
cp /usr/local/Cellar/libmagic/5.32/share/misc/magic.mgc ${LIBMAGIC_TARGET_DIR}/
cp /usr/local/Cellar/libmagic/5.32/lib/libmagic.dylib ${LIBMAGIC_TARGET_DIR}/
python setup.py bdist_wheel -p macosx-10.6-intel

# manylinux x86-64
rm -rf ${LIBMAGIC_TARGET_DIR}/*
rm -rf build
wget https://github.com/spencer-hanson/linux-file/releases/download/FILE5_35_manylinux/file-manylinux-x86-64.zip
unzip file-manylinux-x86-64.zip -d ${LIBMAGIC_TARGET_DIR}
rm file-manylinux-x86-64.zip
python setup.py bdist_wheel -p manylinux1_x86_64

# manylinux i686
rm -rf ${LIBMAGIC_TARGET_DIR}/*
rm -rf build
wget https://github.com/spencer-hanson/linux-file/releases/download/FILE5_35_manylinux/file-manylinux-i686.zip
unzip file-manylinux-i686.zip -d ${LIBMAGIC_TARGET_DIR}
rm file-manylinux-i686.zip
python setup.py bdist_wheel -p manylinux1_i686
