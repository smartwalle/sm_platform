import 'dart:io' as io;

import 'package:sm_platform/src/platform/type.dart';

class KIPlatform {
  static final KIPlatformType type = (isIOS
      ? KIPlatformType.iOS
      : (isAndroid
          ? KIPlatformType.android
          : (isMacOS
              ? KIPlatformType.macOS
              : (isWindows
                  ? KIPlatformType.windows
                  : (isLinux
                      ? KIPlatformType.linux
                      : (isFuchsia ? KIPlatformType.fuchsia : KIPlatformType.unknown))))));

  static bool isWeb = false;

  static bool isIOS = io.Platform.isIOS;

  static bool isAndroid = io.Platform.isAndroid;

  static bool isMacOS = io.Platform.isMacOS;

  static bool isWindows = io.Platform.isWindows;

  static bool isLinux = io.Platform.isLinux;

  static bool isFuchsia = io.Platform.isFuchsia;
}
