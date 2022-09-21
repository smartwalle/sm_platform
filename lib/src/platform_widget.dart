import 'package:flutter/widgets.dart';
import 'package:sm_platform/src/platform/platform.dart';

class KIPlatformWidget extends StatelessWidget {
  KIPlatformWidget({
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

  final Widget Function(BuildContext context)? web;
  final Widget Function(BuildContext context)? android;
  final Widget Function(BuildContext context)? iOS;
  final Widget Function(BuildContext context)? macOS;
  final Widget Function(BuildContext context)? windows;
  final Widget Function(BuildContext context)? fuchsia;
  final Widget Function(BuildContext context)? linux;
  final Widget Function(BuildContext context) child;

  @override
  Widget build(BuildContext context) {
    if (KIPlatform.isWeb && web != null) {
      return web!(context);
    } else if (KIPlatform.isAndroid && android != null) {
      return android!(context);
    } else if (KIPlatform.isIOS && iOS != null) {
      return iOS!(context);
    } else if (KIPlatform.isMacOS && macOS != null) {
      return macOS!(context);
    } else if (KIPlatform.isWindows && windows != null) {
      return windows!(context);
    } else if (KIPlatform.isFuchsia && fuchsia != null) {
      return fuchsia!(context);
    } else if (KIPlatform.isLinux && linux != null) {
      return linux!(context);
    }
    return child(context);
  }
}
