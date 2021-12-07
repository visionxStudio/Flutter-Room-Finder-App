import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/constants/constants.dart';

class CustomRatingStar extends StatelessWidget {
  final double rating;
  const CustomRatingStar({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < rating - 1; i++)
          const Icon(
            Icons.star,
            color: kBottonColor,
            size: 18.0,
          ),
        if (rating % rating.toInt() == 0)
          const Icon(
            Icons.star,
            color: kBottonColor,
            size: 18.0,
          ),
        if (rating % rating.toInt() != 0)
          const Icon(
            Icons.star_half_rounded,
            color: kBottonColor,
            size: 18.0,
          ),
      ],
    );
  }
}
