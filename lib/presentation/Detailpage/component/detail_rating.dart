import 'package:flutter/material.dart';
import 'package:fugi_meet_3/shared/colors.dart';

class DetailRating extends StatelessWidget {
  const DetailRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 24,
          color: AppColor.yellowColor,
        ),
        Icon(
          Icons.star,
          size: 24,
          color: AppColor.yellowColor,
        ),
        Icon(
          Icons.star,
          size: 24,
          color: AppColor.yellowColor,
        ),
        Icon(
          Icons.star,
          size: 24,
          color: AppColor.yellowColor,
        ),
        Icon(
          Icons.star,
          size: 24,
          color: AppColor.lightGrey,
        ),
      ],
    );
  }
}
