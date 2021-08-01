import 'package:movieapp/common/screenutils/screen_util.dart';

extension SizeExtensions on num {
  double get w => ScreenUtil().setWidth(this);
  double get h => ScreenUtil().setHeight(this);
  double get sp => ScreenUtil().setSp(this);
}
