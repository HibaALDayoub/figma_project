import 'package:flutter/material.dart';

import '../../../splash/view/widgets/two_overlapping_circles.dart';

class AuthOverLappingCircles extends StatelessWidget {
  const AuthOverLappingCircles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: const TwoOverlappingCircles(
        left: 35,
        heightContainer: 85,
        heightCircle: 60,
        widthCircle: 60,
        widthContainer: 160,
      ),
    );
  }
}
