import 'package:flutter/widgets.dart';
import 'package:sm_platform/src/device/type.dart';
import 'package:sm_platform/src/platform.dart';

class Device {
  static final MediaQueryData _mediaQueryData = MediaQueryData.fromWindow(WidgetsBinding.instance.window);

  static final DeviceType type = (isPhone
      ? DeviceType.phone
      : (isTablet ? DeviceType.tablet : (isDesktop ? DeviceType.desktop : DeviceType.unknown)));

  static final bool isBrowser = false;

  static final bool isPhone = (Platform.isAndroid || Platform.isIOS) && _mediaQueryData.size.shortestSide < 600;

  static final bool isTablet = (Platform.isAndroid || Platform.isIOS) && _mediaQueryData.size.shortestSide >= 600;

  static final bool isDesktop = (isPhone == false && isTablet == false);
}
