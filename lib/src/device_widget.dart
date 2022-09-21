import 'package:flutter/widgets.dart';
import 'package:sm_platform/src/device/device.dart';

class KIDeviceWidget extends StatelessWidget {
  KIDeviceWidget({
    Key? key,
    this.mobile,
    this.desktop,
    this.browser,
    required this.child,
  }) : super(key: key);

  final Widget Function(BuildContext context)? mobile;
  final Widget Function(BuildContext context)? desktop;
  final Widget Function(BuildContext context)? browser;
  final Widget Function(BuildContext context) child;

  @override
  Widget build(BuildContext context) {
    if (KIDevice.isBrowser && browser != null) {
      return browser!(context);
    } else if (KIDevice.isDesktop && desktop != null) {
      return desktop!(context);
    } else if (KIDevice.isMobile && mobile != null) {
      return mobile!(context);
    }
    return child(context);
  }
}
