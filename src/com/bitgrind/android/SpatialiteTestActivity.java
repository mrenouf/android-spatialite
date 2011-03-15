package com.bitgrind.android;

import java.util.Arrays;

import jsqlite.Callback;
import jsqlite.Exception;
import android.app.Activity;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;

public class SpatialiteTestActivity extends Activity {

  private static final String TAG = SpatialiteTestActivity.class.getName();
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.main);
    jsqlite.Database db = new jsqlite.Database();
    try {
      db.open(Environment.getExternalStorageDirectory() + "/spatialite_test.db",
          jsqlite.Constants.SQLITE_OPEN_READONLY);
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
      db.exec("SELECT name, peoples, AsText(GaiaGeometry) from Towns where peoples > 350000 order by peoples DESC;", cb);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
