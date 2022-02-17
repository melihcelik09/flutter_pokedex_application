import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();
  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.22.sh : 0.2.sw;
  }

  static EdgeInsets getDefaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(12.w);
    }
  }

  static EdgeInsets getIconPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(10.h);
    } else {
      return EdgeInsets.all(4.w);
    }
  }

  static double calculatePokeImageAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sw;
    } else {
      return 0.3.sh;
    }
  }

  static final Map<String, Color> _typeColorMap = {
    "grass": Colors.green,
    "fire": Colors.redAccent,
    "water": Colors.blue,
    "electric": Colors.yellow,
    "rock": Colors.grey,
    "ground": Colors.brown,
    "bug": Colors.lightGreenAccent.shade700,
    "psychic": Colors.indigo,
    "fighting": Colors.orange,
    "ghost": Colors.deepPurple,
    "normal": Colors.black26,
    "poison": Colors.deepPurpleAccent,
    "ice": Colors.cyan,
    "dragon": Colors.deepOrangeAccent,
  };
  static Color getTypeColor(String type) {
    String typeLowerCase = type.toLowerCase();
    if (_typeColorMap.containsKey(typeLowerCase)) {
      return _typeColorMap[typeLowerCase] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }
}
