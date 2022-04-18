import 'package:flutter/material.dart';

class SensorWidget extends StatelessWidget {
  const SensorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 1002,
          width: MediaQuery.of(context).size.width * 0.18, // 341
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: const [
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
        ),
      ],
    );
  }
}
