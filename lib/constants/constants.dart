import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  //^ kurucu methodunu gizledik. bu sayede meteod uretilemez.
  Constants._();
  static const String appTitle = "Pokedex";
  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(48),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(18),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static String imagePath = 'images/pokeball.png';
  static _calculateFontSize(int fontSize) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return fontSize.sp;
    } else {
      return (fontSize / 1.8).sp;
    }
  }

  static getPokeInfoLabelTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(19),
      fontWeight: FontWeight.bold,
    );
  }

  static getPokeInfoTextStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: _calculateFontSize(16),
    );
  }
}
