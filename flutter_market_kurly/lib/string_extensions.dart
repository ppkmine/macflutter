import 'package:intl/intl.dart';


///확장 메서드 이름을 StringExtension으로 하고,
///String객체를 확장하겟단 쇠리??
extension StringExtension on String{
  String numberFormat() {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(this));


  }
}