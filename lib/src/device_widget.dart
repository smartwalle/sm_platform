import 'package:flutter/widgets.dart';
import 'package:sm_platform/src/device.dart';

class DeviceWidget extends StatelessWidget {
  DeviceWidget({
    Key? key,
    this.mobile,
    this.desktop,
    this.browser,
    required this.child,
  }) : super(key: key);

  final Widget? mobile;
  final Widget? desktop;
  final Widget? browser;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (Device.isBrowser && this.browser != null) {
      return this.browser!;
    } else if (Device.isDesktop && this.desktop != null) {
      return this.desktop!;
    } else if (Device.isMobile && this.mobile != null) {
      return this.mobile!;
    }
    return this.child;
  }
}
