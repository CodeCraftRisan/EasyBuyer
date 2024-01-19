import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            color: TColors.primary,
            padding: const EdgeInsets.all(0),
            child: Stack(
              children: [
                TCircularContainer(),
              ],
            ),
          )
        ],
        ),
        ),
      );

  }
}

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
  });
  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundCoIor;




  @override
  Widget build(BuildContext context) {
    return Container(
    width: 400,
    height: 400,
    padding: const EdgeInsets.all(0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(400),
    color: TColors.textWhite.withopacity(0.1),

        ),
        );

  }
}
