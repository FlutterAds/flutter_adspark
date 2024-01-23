<p align="center">
<a href="https://github.com/FlutterAds"><img src="https://raw.githubusercontent.com/FlutterAds/site/master/logo/flutterads_logo.png" alt="logo"/></a>
</p>
<h3 align="center">Flutter Adspark</h3>
<h5 align="center">一款优质的广告监测、增长分析、归因上报、事件管理插件（巨量广告、穿山甲）</h5>

<p align="center">
<a href="https://pub.dev/packages/flutter_adspark"><img src=https://img.shields.io/badge/version-v1.1.0-success></a>
<a href="https://github.com/FlutterAds/flutter_adspark"><img src=https://img.shields.io/badge/platform-iOS%20%7C%20Android-brightgreen></a>
</p>
<p align="center">
<a href="https://flutterads.github.io/site/"><img src="https://raw.githubusercontent.com/FlutterAds/.github/main/gromore_pro_site.png" alt="gromore"/></a>
</p>

## 支持平台

- 穿山甲
- 巨量引擎
- 巨量广告

## 核心功能
- ✅ 激活
- ✅ 注册
- ✅ 支付
- ✅ 账户登录、登出
- ✅ 绑定社交账号
- ✅ 完成教学任务/副本
- ✅ 升级
- ✅ 创建角色
- ✅ 查看内容/商品详情
- ✅ 添加到购物车
- ✅ 提交购买/下单
- ✅ 添加支付渠道
- ✅ 数据检测
- ✅ 自定义事件
- 📱 可视化测试助手

## 可视化测试助手

> 为了方便开发者调试，提供了可视化助手，方便开发者查看数据上报情况

|功能区|事件区|日志区|网络区|
|--|--|--|--|
| ![](https://raw.githubusercontent.com/FlutterAds/flutter_adspark/master/example/images/img001.png) | ![]([example/images/img00](https://raw.githubusercontent.com/FlutterAds/flutter_adspark/master/example/images/img00)2.png) | ![](https://raw.githubusercontent.com/FlutterAds/flutter_adspark/master/example/images/img003.png) | ![](https://raw.githubusercontent.com/FlutterAds/flutter_adspark/master/example/images/img004.png) |


## 获取 Pro 版

- Pro 版本 =「插件包」+「技术支持」+「答疑咨询」
- 开源版本没有功能，[点击 Pro 版本才具有完整功能](https://flutterads.github.io/site/)

## 开始接入

> 在项目根目录下新建一个 'plugins' 文件夹，将我提供 'flutter_adspark.zip' 压缩包解压至此文件夹

``` yaml
dependencies:
  flutter_adspark: 
    path: plugins/flutter_adspark # 本地引入
```



## 使用方法

### 初始化

``` dart
import 'package:flutter_adspark/flutter_adspark.dart';

Future<void> init() async {
    bool? result;
    if (Platform.isAndroid) {
      result = await FlutterAdspark.init("appid", "huawei");
    } else {
      result = await FlutterAdspark.init("appid", "AppStore");
    }
    print("FlutterAdspark init result: $result");
  }
```

### 事件上报

``` dart
/// 上报事件（系统+自定义）
/// [eventName] 事件名称
/// [params] 参数信息
FlutterAdspark.addEvent(GrownEventType.order, params: {
                        "orderId": "54323454323",
                        "amount": 2000,
                        "count": 1,
                      });
```

### 系统事件

- 注册
``` dart
/// 注册事件（系统）
/// [method] 注册方式
/// [isSuccess] 是否成功
FlutterAdspark.registerEvent("wechat", true);
```

- 其他事件看文档

### 常用事件

> 如果够用，则直接使用，不沟通则自己传字符串即可

``` dart
class GrownEventType {
  //注册
  static var register = "grown_attribution_event_register";
  //付费
  static var purchase = "grown_attribution_event_purchase";
  //关键行为
  static var key_behavior = "grown_attribution_event_key_behavior";
  //下单
  static var order = "grown_attribution_event_order";
  //下载
  static var download = "grown_attribution_event_download";
  //应用内拉起
  static var deeplink = "grown_attribution_event_deelink";
  //授权
  static var authorization = "grown_attribution_event_authorization";
  //广告变现
  static var ad_purchase = "grown_attribution_event_ad_purchase";
  //次留
  static var retention_2d = "grown_attribution_event_retention_2d";
  //添加购物车
  static var add_to_cart = "grown_attribution_event_add_to_cart";
  //表单提交
  static var form_submit = "grown_attribution_event_form_submit";
  //拉活
  static var app_re_active_wake_up =
      "grown_attribution_event_app_re_active_wake_up";
  //自定义激活
  static var custom_activition = "grown_attribution_event_custom_activition";
  //自定义注册
  static var custom_register = "grown_attribution_event_custom_register";
}
```

## 官方文档

- [穿山甲～Android](https://bytedance.larkoffice.com/wiki/Yh8qwfiiIivBaKkYFYAcZedTnJf)
- [穿山甲～iOS](https://bytedance.larkoffice.com/wiki/YcpCwVKdFi0VUxk4EAjc6TuJnre)
- [巨量广告～文档](https://event-manager.oceanengine.com/docs/8650/195169)


## FlutterAds 广告插件系列
|插件|描述|
|-|-|
|[flutter_gromore_pro](https://flutterads.github.io/site/)|🏆🏆🏆 帮你大幅提升广告收益，发挥出最大的用户价值|
|[flutter_gromore_ads](https://github.com/FlutterAds/flutter_gromore_ads)|字节跳动、穿山甲、GroMore 聚合 Flutter 广告开源版插件|
|[flutter_pangle_ads](https://github.com/FlutterAds/flutter_pangle_ads)|字节跳动、穿山甲 Flutter 广告插件|
|[flutter_qq_ads](https://github.com/FlutterAds/flutter_qq_ads)|腾讯广告、广点通、优量汇 Flutter 广告插件|
|[flutter_adspark](https://github.com/FlutterAds/flutter_adspark)|巨量广告/穿山甲的广告监测、增长分析、归因上报、事件管理 Flutter 版插件|
