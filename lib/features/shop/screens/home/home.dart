import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: ,
              child: Container(
                color: TColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height:400,
                  child:Stack(
                    children: [
                      Positioned(top: -150, right: -250,child: TCircularContainer(backgroundCoIor: TColors.textWhite.withOpacity(0.1))),
                      Positioned(top:100, right: -300, child: TCircularContainer(backgroundCoIor: TColors.textWhite.withOpacity(0.1))),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}



