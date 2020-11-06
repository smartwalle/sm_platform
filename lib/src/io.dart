import 'dart:io' as io;

class Platform {
  static bool isWeb() {
    return false;
  }

  static bool isAndroid() {
    return io.Platform.isAndroid;
  }

  static bool isIOS() {
    return io.Platform.isIOS;
  }

  static bool isMacOS() {
    return io.Platform.isMacOS;
  }

  static bool isWindows() {
    return io.Platform.isWindows;
  }

  static bool isFuchsia() {
    return io.Platform.isFuchsia;
  }

  static bool isLinux() {
    return io.Platform.isLinux;
  }
}
