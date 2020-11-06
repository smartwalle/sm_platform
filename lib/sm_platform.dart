library sm_platform;

export 'package:sm_platform/src/platform_builder.dart';
export 'package:sm_platform/src/web.dart' if (dart.library.io) 'package:sm_platform/src/io.dart';
