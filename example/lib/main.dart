import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_adspark/flutter_adspark.dart';

import 'style.dart';

void main() {
  // 绑定引擎
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

/// 初始化
Future<void> init() async {
  bool? result = await FlutterAdspark.init("appid", "huawei");
  print("FlutterAdspark init result: $result");
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterAds Adspark Demo'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  kSizedBox10,
                  kSizedBox10,
                  ListTile(
                    dense: true,
                    title: const Text('🚀 注册'),
                    onTap: () {
                      FlutterAdspark.registerEvent("wechat", true);
                    },
                  ),
                  kDivider,
                  ListTile(
                    dense: true,
                    title: const Text('🛒 下单'),
                    onTap: () {
                      FlutterAdspark.addEvent(GrownEventType.order, params: {
                        "orderId": "54323454323",
                        "amount": 2000,
                        "count": 1,
                      });
                    },
                  ),
                  kDivider,
                  ListTile(
                    dense: true,
                    title: const Text('📱 广告变现'),
                    onTap: () {
                      FlutterAdspark.addEvent(GrownEventType.ad_purchase,
                          params: {
                            "type": "激励视频",
                            "eCPM": "20000",
                          });
                    },
                  ),
                  kDivider,
                  kSizedBox10,
                  kSizedBox10,
                  const Center(
                      child: Text("FlutterAds (致力于构建优质的 Flutter 广告插件)")),
                  kSizedBox10,
                  const Center(
                      child: Text(
                          "https://github.com/FlutterAds/flutter_adspark")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
