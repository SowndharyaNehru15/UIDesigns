import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'; // For kIsWeb

class Responsive {
  final BuildContext context;
  late MediaQueryData mediaQuery;
  late double screenWidth, screenHeight;

  Responsive(this.context) {
    mediaQuery = MediaQuery.of(context);
    screenWidth = mediaQuery.size.width;
    screenHeight = mediaQuery.size.height;
  }

  // Device type checks
  bool get isDesktop => screenWidth >= 1024 || kIsWeb;
  bool get isTablet => screenWidth >= 600 && screenWidth < 1024;
  bool get isMobile => screenWidth < 600;

  // Scaling functions
  double scale(double value) {
    if (isDesktop) return value * 1.2;
    if (isTablet) return value * 1.1;
    return value;
  }

  double scalePadding(double padding) => scale(padding);
  double scaleText(double size) => scale(size);
  double scaleHeight(double height) => scale(height);
  double scaleWidth(double width) => scale(width);

  // Grid crossAxisCount
  int get crossAxisCount => isDesktop ? 4 : isTablet ? 3 : 2;

  // Responsive padding
  EdgeInsets paddingAll(double padding) => EdgeInsets.all(scalePadding(padding));
  EdgeInsets paddingSymmetric({double vertical = 0.0, double horizontal = 0.0}) {
    return EdgeInsets.symmetric(
      vertical: scalePadding(vertical),
      horizontal: scalePadding(horizontal),
    );
  }
}

// **Extension for easy access in BuildContext**
extension ThemeExtension on BuildContext {
  Responsive get responsive => Responsive(this);
}
