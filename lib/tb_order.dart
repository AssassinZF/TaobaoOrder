import 'dart:async';

import 'package:flutter/services.dart';

class TbOrder {
  static const MethodChannel _channel =
      const MethodChannel('tb_order');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
