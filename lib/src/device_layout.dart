import 'package:flutter/widgets.dart';
import 'package:sm_platform/src/device.dart';

class DeviceLayout extends StatelessWidget {
  final Widget phone;
  final Widget tablet;
  final Widget desktop;
  final Widget browser;
  final Widget child;

  DeviceLayout({
    Key key,
    this.phone,
    this.tablet,
    this.desktop,
    this.browser,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Device.isBrowser && this.browser != null) {
      return this.browser;
    } else if (Device.isDesktop && this.desktop != null) {
      return this.desktop;
    } else if (Device.isTablet && this.tablet != null) {
      return this.tablet;
    } else if (Device.isPhone && this.phone != null) {
      return this.phone;
    }
    return this.child;
  }
}
