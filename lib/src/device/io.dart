import 'package:sm_platform/src/device/type.dart';
import 'package:sm_platform/src/platform.dart';

class Device {
  static final DeviceType type = (isMobile
      ? DeviceType.mobile
      : (isDesktop ? DeviceType.desktop : DeviceType.unknown));

  static final bool isBrowser = false;

  static final bool isMobile = (Platform.isAndroid || Platform.isIOS);

  static final bool isDesktop = (isMobile == false);
}
