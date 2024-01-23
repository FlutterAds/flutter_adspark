import 'dart:async';

import 'package:flutter/services.dart';
export 'grown_event_type.dart';

class FlutterAdspark {
  static const MethodChannel _channel = MethodChannel('flutter_adspark');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  /// 初始化
  static Future<bool?> init(String appId, String channel) async {
    final bool? result = await _channel.invokeMethod('init', {
      "appId": appId,
      "channel": channel,
    });
    return result;
  }

  /// 上报事件（系统SDK预定义+自定义）
  /// [eventName] 事件名称
  /// [params] 参数信息
  static Future<bool?> addEvent(String eventName,
      {Map<String, dynamic>? params, int type = -1}) async {
    final bool? result = await _channel.invokeMethod('addEvent', {
      "eventName": eventName,
      "params": params,
      "type": type,
    });
    return result;
  }

  /// 注册事件（系统SDK预定义）
  /// [method] 注册方式
  /// [isSuccess] 是否成功
  static Future<bool?> registerEvent(String method, bool isSuccess) async {
    final bool? result = await addEvent(
      'register',
      params: {
        "method": method,
        "is_success": isSuccess,
      },
      type: 1,
    );
    return result;
  }
}
