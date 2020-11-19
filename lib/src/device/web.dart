import 'package:flutter/foundation.dart';
import 'package:sm_platform/src/device/type.dart';

class Device {
  static final DeviceType type = DeviceType.browser;

  static final bool isBrowser = kIsWeb;

  static final bool isPhone = false;

  static final bool isTablet = false;

  static final bool isDesktop = false;
}
