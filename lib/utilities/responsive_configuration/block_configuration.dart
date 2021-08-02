import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlockConfiguration {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double screenMagnitude;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double blockSizeMagnitude;
  static String deviceType;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    screenMagnitude = _mediaQueryData.size.shortestSide;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    if (screenMagnitude < 500) {
      deviceType = 'mobile';
    } else if (screenMagnitude > 500) {
      deviceType = 'tab';
    }
  }

  //returns block size of vertical axis
  double hbSize(double blocks) {
    return blockSizeHorizontal * blocks;
  }

  double horizontal(double blocks) {
    return blockSizeHorizontal * blocks;
  }

  //returns block size of vertical axis
  double vbSize(double blocks) {
    return blockSizeVertical * blocks;
  }

  double vertical(double blocks) {
    return blockSizeVertical * blocks;
  }

  double size(double blocks) {
    return blockSizeHorizontal * blocks * getSize();
  }

  num getSize() {
    var value;
    switch (deviceType) {
      case "mobile":
        value = 0.268;
        break;
      default:
        value = 0.268;
        break;
    }
    return value;
  }

  double fontSize(double size) {
    switch (deviceType) {
      case "mobile":
        return ScreenUtil().setSp(size);
        break;
      default:
        return ScreenUtil().setSp(size);
        break;
    }
  }
}
