Building
========

export NDK=<path to your NDK directory>
cd jni/libiconv-1.13.1; ./configure
cd jni/proj-4.7.0; ./configure
cd jni/libspatialite-amalgamation-2.3.1; ./configure
$NDK/ndk-build

