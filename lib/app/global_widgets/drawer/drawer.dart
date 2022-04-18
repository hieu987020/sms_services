import 'package:flutter/material.dart';

class WaterOSDrawer extends StatelessWidget {
  const WaterOSDrawer({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);
  final double? width;

  final double? height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: width, //295
          height: height,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 1, // soften the shadow
                spreadRadius: 1, //extend the shadow
                offset: Offset(
                  2, // Move to right 10  horizontally
                  1, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
