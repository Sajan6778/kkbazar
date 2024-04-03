import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? smallScreen;
  final Widget? mediumScreen;
  final Widget? mediumScreen1;
  final Widget largeScreen;

  const Responsive({Key? key,this.smallScreen,this.mediumScreen,this.mediumScreen1,required this.largeScreen}): super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 480;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 481 &&
        MediaQuery.of(context).size.width <= 768;
  }

  static bool isMediumScreen1(BuildContext context) {
    return MediaQuery.of(context).size.width >= 769 &&
        MediaQuery.of(context).size.width <= 1024;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1023) {

        // print("constraints.maxWidth${constraints.maxWidth}");
        return largeScreen;
      } else if (constraints.maxWidth <= 481 && constraints.maxWidth <= 768) {
        return mediumScreen ?? largeScreen;
      } else if (constraints.maxWidth <= 769 && constraints.maxWidth <= 1024) {
        return mediumScreen ?? largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
