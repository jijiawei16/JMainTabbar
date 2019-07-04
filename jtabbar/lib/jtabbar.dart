import 'dart:async';
import 'package:flutter/services.dart';
import 'JMainTabbar.dart';
import 'JMainTabbarItem.dart';

class Jtabbar {
  static const MethodChannel _channel =
  const MethodChannel('jtabbar');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
