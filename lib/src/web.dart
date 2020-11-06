import 'package:flutter/foundation.dart';

class Platform {
  static bool isWeb() {
    return kIsWeb;
  }

  static bool isAndroid() {
    return false;
  }

  static bool isIOS() {
    return false;
  }

  static bool isMacOS() {
    return false;
  }

  static bool isWindows() {
    return false;
  }

  static bool isFuchsia() {
    return false;
  }

  static bool isLinux() {
    return false;
  }
}
