import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension System on String {}

SystemUiOverlayStyle systemUIOverlayStyle() {
  return const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.purple,
  );
}

void uIOverlayStyle() {
  return SystemChrome.setSystemUIOverlayStyle(systemUIOverlayStyle());
}

extension SystemPlatform on BuildContext {
  //https://api.flutter.dev/flutter/foundation/kIsWeb-constant.html
  //https://api.flutter.dev/flutter/dart-io/Platform-class.html
  void verifyPlatform() {
    if (kIsWeb) {
      // running on the web!
    } else {
      if (Platform.isAndroid) {
      } else if (Platform.isIOS) {
      } else if (Platform.isFuchsia) {
      } else if (Platform.isLinux) {
      } else if (Platform.isMacOS) {
      } else if (Platform.isWindows) {}
    }
  }

  verifyDebug() {
    if (kDebugMode) {
    } else {}
  }
}
