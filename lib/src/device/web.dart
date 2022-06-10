import 'package:flutter/foundation.dart';
import 'package:sm_platform/src/device/type.dart';

class Device {
  static final DeviceType type = DeviceType.browser;

  static final bool isBrowser = kIsWeb;

  static final bool isMobile = false;

  static final bool isDesktop = false;
}
