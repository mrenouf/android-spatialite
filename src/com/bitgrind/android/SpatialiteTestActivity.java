package com.bitgrind.android;

import java.io.IOException;
import java.util.Arrays;

import com.bitgrind.android.R;

import SQLite.Callback;
import SQLite.Exception;
import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class SpatialiteTestActivity extends Activity {

	private static final String TAG = SpatialiteTestActivity.class.getName();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		
		SQLite.Database db = new SQLite.Database();
		try {
			db.open("/mnt/sdcard/spatialite_test.db", SQLite.Constants.SQLITE_OPEN_READONLY);
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
				}};
			db.exec("SELECT name, peoples, AsText(GaiaGeometry) from Towns where peoples > 350000 order by peoples DESC;", cb);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
