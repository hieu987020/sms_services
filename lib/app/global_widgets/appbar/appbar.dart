import 'package:flutter/material.dart';

class WaterOSAppbar extends StatelessWidget {
  const WaterOSAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 99,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4, // soften the shadow
            spreadRadius: 2, //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              4, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset('assets/images/WaterOS.png'),
          Expanded(
            child: Container(
              height: 99,
            ),
          )
        ],
      ),
    );
  }
}
