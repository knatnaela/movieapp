import 'package:meta/meta.dart';

class Tab {
  final int index;
  final String title;

  const Tab({
    required this.index,
    required this.title,
  }) : assert(index >= 0, 'index can\'t be negative');
}
