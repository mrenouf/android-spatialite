package com.bitgrind.android;

import java.util.Arrays;

import SQLite.Callback;
import SQLite.Exception;
import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;

public class SpatialiteTestActivity extends Activity {

  private static final String TAG = SpatialiteTestActivity.class.getSimpleName();

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);

    SQLite.Database db = new SQLite.Database();
    try {

      db.open(Environment.getExternalStorageDirectory() + "/spatialite-test.db",
          SQLite.Constants.SQLITE_OPEN_CREATE);
      Callback cb = new Callback() {
        @Override
        public void columns(String[] coldata) {
          Log.v(TAG, "Columns: " + Arrays.toString(coldata));
        }

        @Override
        public void types(String[] types) {
          Log.v(TAG, "Types: " + Arrays.toString(types));
        }

        @Override
        public boolean newrow(String[] rowdata) {
          Log.v(TAG, "Row: " + Arrays.toString(rowdata));

          // Careful (from parent javadoc):
          // "If true is returned the running SQLite query is aborted."
          return false;
        }
      };
      db.exec("SELECT spatialite_version();", cb);
    } catch (Exception e) {
      Log.e(TAG, "Exception caught", e);
    }
  }
}
