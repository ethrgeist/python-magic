
LIBMAGIC_TARGET_DIR=magic/libmagic
DOWNLOAD_CACHE=download

mkdir -p ${DOWNLOAD_CACHE}
# Debian Stretch Linux

rm -rf ${LIBMAGIC_TARGET_DIR}/*
rm -rf build
rm -rf dist/*

wget https://github.com/spencer-hanson/python-magic/raw/master/libmagic-linux-x86_64.zip
unzip libmagic-linux-x86_64.zip -d ${LIBMAGIC_TARGET_DIR}
rm libmagic-linux-x86_64.zip
python setup.py bdist_wheel -p manylinux1_x86_64

