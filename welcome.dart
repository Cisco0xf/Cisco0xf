import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';

class Log {
  Log._();

  static const String _closeColor = "\x1B[0m";

  static const Map<LColor, String> _colors = {
    LColor.black: "\x1B[30m",
    LColor.red: "\x1B[31m",
    LColor.green: "\x1B[32m",
    LColor.yellow: "\x1B[33m",
    LColor.blue: "\x1B[34m",
    LColor.magenta: "\x1B[35m",
    LColor.cyan: "\x1B[36m",
    LColor.white: "\x1B[37m",
    LColor.reset: "\x1B[0m",
    LColor.none: "",
  };

  static void log(
    String data, {
    LColor color = LColor.green,
    String? name,
  }) {
    if (!kDebugMode) {
      return;
    }

    dev.log("${_colors[color]}$data$_closeColor", name: name ?? "DEBUG LOG:");
  }

  static void error(String data) {
    if (!kDebugMode) {
      return;
    }

    dev.log("${_colors[LColor.red]}$data$_closeColor", name: "DEBUG LOG:");
  }
}

enum LColor {
  red,
  black,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
  reset,
  none,
}

class Data {
  const Data._();

  static const String msg = "Welcome to my portfolio";
}

void main() {
  Log.log(Data.msg);
}
