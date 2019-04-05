#!/bin/sh
/usr/bin/curl -LX GET https://curl.askapache.com/curl-7.64.1.tar.bz2 -o curl-7.64.1.tar.bz2
/usr/bin/bzip2 -d curl-7.64.1.tar.bz2
tar xvf curl-7.64.1.tar
rm curl-7.64.1.tar
cd curl-7.64.1
export CC=/usr/bin/clang
./configure --with-zlib --with-ssl --with-nghttp2 --disable-dependency-tracking
make

# Remember to remove the old cURL before installing latest cURL built from source
apk del curl
make install
cd ..
rm -rf curl-7.64.1
rm build_source_pkgs.sh
rm Dockerfile
/usr/local/bin/curl --version
