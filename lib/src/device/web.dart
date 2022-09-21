import 'package:flutter/foundation.dart';
import 'package:sm_platform/src/device/type.dart';

class KIDevice {
  static final KIDeviceType type = KIDeviceType.browser;

  static final bool isBrowser = kIsWeb;

  static final bool isMobile = false;

  static final bool isDesktop = false;
}
