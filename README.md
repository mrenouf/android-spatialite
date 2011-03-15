Building the Native libraries
========

Download the Android NDK (latest release as of now is r5). Follow the instructions on the website.
To make things easier, add the directory where you unpacked the NDK to your path:

`export PATH="$PATH:<path to your ndk directory"

You use the `ndk-build` script provided there to compile everything needed.

From the project root, use these steps:

`$ cd jni`
`$ ndk-build`

Reconfiguring (autoconf)
========

Generated headers for the dependent libraries have been checked in so you should not need to
reconfigure them. If you do for some reason, you may follow these instructions.

WARNING: This will likely break things as sources have been customized to work on Android.

- Setup some environment variables to make this easier:

 `export JDK_HOME=<path your JDK directory>`

- Configure libiconv:

 `cd jni/libiconv-1.13.1; ./configure`

- Configure proj:

 `cd jni/proj-4.7.0; ./configure`

- Configure spatialite/sqlite3 amalgamation:

 `cd jni/libspatialite-amalgamation-2.3.1; ./configure`

- Configure javasqlite:

 `sudo apt-get install libsqlite3-dev`

 `cd jni/javasqlite-20110106; ./configure --with-jdk=$JDK_HOME`

 `$JDK_HOME/bin/javac SQLite/Database.java SQLite/Vm.java SQLite/FunctionContext.java SQLite/Stmt.java SQLite/Blob.java SQLite/Backup.java SQLite/Profile.java`

 `$JDK_HOME/bin/javah -o native/sqlite_jni.h SQLite.Database SQLite.Vm SQLite.FunctionContext SQLite.Stmt SQLite.Blob SQLite.Backup SQLite.Profile`

Testing
=======

- Grab the spatialite test database from http://www.gaia-gis.it/spatialite-2.0/test.db.gz

- Unpack and push the database to your device's SD card:

 `adb push test.db /mnt/sdcard/spatialite_test.db`

- Run the SpatialiteTestActivity on your phone.
