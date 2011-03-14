Building
========

- Setup some environment variables to make this easier:

 `export NDK=<path to your NDK directory>`
 
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

- Build the native compoenents:

 `$NDK/ndk-build`

Testing
=======

- Grab the spatialite test database from http://www.gaia-gis.it/spatialite-2.0/test.db.gz

- Unpack and push the database to your device's SD card:

 `adb push test.db /mnt/sdcard/spatialite_test.db`

- Run the SpatialiteTestActivity on your phone.
