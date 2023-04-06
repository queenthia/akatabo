import 'package:flutter/material.dart';

import '../colors.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({
    Key? key,
    this.height = 16,
    this.width = double.infinity,
    this.borderRadius,
    this.loadingColor = akataboColor,
    this.decoration,
  }) : super(key: key);

  //
  final double height, width;

  final BorderRadiusGeometry? borderRadius;

  final Color loadingColor;

  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration ??
          BoxDecoration(
            color: loadingColor.withOpacity(.5),
            borderRadius: borderRadius ?? BorderRadius.circular(8),
          ),
    );
  }
}
