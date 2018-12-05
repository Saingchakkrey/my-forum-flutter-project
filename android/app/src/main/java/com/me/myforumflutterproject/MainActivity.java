package com.me.myforumflutterproject;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    setTheme(R.style.LaunchTheme);
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
//    getWindow().setStatusBarColor(0x00000000);
//
//    //Remove full screen flag after load
//    ViewTreeObserver vto = getFlutterView().getViewTreeObserver();
//    vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
//      @Override
//      public void onGlobalLayout() {
//        getFlutterView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
//        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
//      }
//    });
  }
}
