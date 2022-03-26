import 'package:flutter/material.dart';

// import '../utils/colors.dart';

// ignore: must_be_immutable
class GreyBox extends StatelessWidget {
  double? height = 0;
  double? width = 0;
  Widget? child;
  double? radiusRatio;
  Color? background;
  GreyBox({
    this.height,
    this.radiusRatio,
    this.width,
    this.child,
    this.background = Colors.grey,
    Key? key,
  }) : super(key: key);
  GreyBox.white({
    this.height,
    this.radiusRatio,
    this.width,
    this.child,
    Key? key,
  }) : super(key: key) {
    background = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(145, 163, 176, 1)),
          borderRadius: BorderRadius.circular(10),
          color: background),
      height: height,
      width: width,
      child: child ?? const SizedBox(),
    );
  }
}
