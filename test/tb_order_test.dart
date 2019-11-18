import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tb_order/tb_order.dart';

void main() {
  const MethodChannel channel = MethodChannel('tb_order');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await TbOrder.platformVersion, '42');
  });
}
