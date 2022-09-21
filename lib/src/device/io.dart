import 'package:sm_platform/src/device/type.dart';
import 'package:sm_platform/src/platform/platform.dart';

class KIDevice {
  static final KIDeviceType type = (isMobile
      ? KIDeviceType.mobile
      : (isDesktop ? KIDeviceType.desktop : KIDeviceType.unknown));

  static final bool isBrowser = false;

  static final bool isMobile = (KIPlatform.isAndroid || KIPlatform.isIOS);

  static final bool isDesktop = (isMobile == false);
}
