import 'package:flutter/widgets.dart';
import 'package:sm_platform/src/platform.dart';

class PlatformWidget extends StatelessWidget {
  final Widget? web;
  final Widget? android;
  final Widget? iOS;
  final Widget? macOS;
  final Widget? windows;
  final Widget? fuchsia;
  final Widget? linux;
  final Widget child;

  PlatformWidget({
    Key? key,
    this.web,
    this.android,
    this.iOS,
    this.macOS,
    this.windows,
    this.fuchsia,
    this.linux,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isWeb && this.web != null) {
      return this.web!;
    } else if (Platform.isAndroid && this.android != null) {
      return this.android!;
    } else if (Platform.isIOS && this.iOS != null) {
      return this.iOS!;
    } else if (Platform.isMacOS && this.macOS != null) {
      return this.macOS!;
    } else if (Platform.isWindows && this.windows != null) {
      return this.windows!;
    } else if (Platform.isFuchsia && this.fuchsia != null) {
      return this.fuchsia!;
    } else if (Platform.isLinux && this.linux != null) {
      return this.linux!;
    }
    return this.child;
  }
}
