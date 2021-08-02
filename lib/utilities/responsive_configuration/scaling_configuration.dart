import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScalingConfiguration {
  double scaledSize(double size) {
    return ScreenUtil().setSp(size);
  }
}
