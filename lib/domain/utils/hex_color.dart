import 'dart:ui';

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    hexColor = 'FF$hexColor';
    return int.parse(hexColor, radix: 16);
  }

  Color get color => Color(value);
}
