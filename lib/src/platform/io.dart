import 'dart:io' as io;

import 'package:sm_platform/src/platform/type.dart';

class Platform {
  static final PlatformType type = (isIOS
      ? PlatformType.iOS
      : (isAndroid
          ? PlatformType.android
          : (isMacOS
              ? PlatformType.macOS
              : (isWindows
                  ? PlatformType.windows
                  : (isLinux
                      ? PlatformType.linux
                      : (isFuchsia
                          ? PlatformType.fuchsia
                          : PlatformType.unknown))))));

  static bool isWeb = false;

  static bool isIOS = io.Platform.isIOS;

  static bool isAndroid = io.Platform.isAndroid;

  static bool isMacOS = io.Platform.isMacOS;

  static bool isWindows = io.Platform.isWindows;

  static bool isLinux = io.Platform.isLinux;

  static bool isFuchsia = io.Platform.isFuchsia;
}
