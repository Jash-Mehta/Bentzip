import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget smallmobile;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.smallmobile,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.height < 1000;

  static bool issmallmobile(BuildContext context) =>
      MediaQuery.of(context).size.height > 800;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight >= 1000) {
          return mobile;
        } else if (constraints.maxHeight < 800) {
          return smallmobile;
        } else {
          return mobile;
        }
      },
    );
  }
}
