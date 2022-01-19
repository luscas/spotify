import 'package:flutter/material.dart';

class BgRadial extends StatelessWidget {
  const BgRadial({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 530,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color(0xFF859AC0),
            Colors.transparent
          ],
          center: Alignment.topLeft,
          radius: 1.0,
        )
      ),
    );
  }
}