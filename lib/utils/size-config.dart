import 'package:flutter/widgets.dart';

/// This class helps to get the screen width and height details we will need from
/// [MediaQueryData]
///   Example
///   To initialize, call the SizeConfig().init(context) in the build method of
///   a class before the return statement then to use in sample container widget
///     width: SizeConfig.screenWidth
///     height: SizeConfig.screenHeight
class SizeConfig {

  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);

    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal = _mediaQueryData.padding.left
        + _mediaQueryData.padding.right;
    _safeAreaVertical = _mediaQueryData.padding.top
        + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenWidth - _safeAreaVertical) / 100;
  }
}

