package com.zero.flutter_adspark;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import org.json.JSONObject;

import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/**
 * FlutterAdsparkPlugin
 */
public class FlutterAdsparkPlugin implements FlutterPlugin, MethodCallHandler, ActivityAware {
    private final String TAG = FlutterAdsparkPlugin.class.getSimpleName();
    // 方法通道
    private MethodChannel methodChannel;
    // 当前 Activity
    public Activity activity;
    // 插件连接器
    private FlutterPluginBinding bind;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        bind = flutterPluginBinding;
        methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_adspark");
        methodChannel.setMethodCallHandler(this);
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        String method = call.method;
        Log.d(TAG, "MethodChannel onMethodCall method:" + method + " arguments:" + call.arguments);
        if (method.equals("getPlatformVersion")) {
            result.success("Android " + android.os.Build.VERSION.RELEASE);
        } else {
            result.notImplemented();
        }
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        methodChannel.setMethodCallHandler(null);
    }
}
