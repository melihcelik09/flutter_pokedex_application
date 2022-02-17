import 'package:flutter/material.dart';
import 'package:flutter_pokedex_application/constants/constants.dart';
import 'package:flutter_pokedex_application/constants/ui_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: UIHelper.getDefaultPadding(),
              child: Text(
                Constants.appTitle,
                style: Constants.getTitleTextStyle(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              Constants.imagePath,
              //! oranla demis oluyoruz.
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sh
                  : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
