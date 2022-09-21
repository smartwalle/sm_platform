import 'package:flutter/foundation.dart';
import 'package:sm_platform/src/platform/type.dart';

class KIPlatform {
  static final KIPlatformType type = KIPlatformType.web;

  static final bool isWeb = kIsWeb;

  static final bool isIOS = false;

  static final bool isAndroid = false;

  static final bool isMacOS = false;

  static final bool isWindows = false;

  static final bool isLinux = false;

  static final bool isFuchsia = false;
}
