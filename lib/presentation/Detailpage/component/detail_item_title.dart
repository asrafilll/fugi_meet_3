import 'package:flutter/material.dart';
import 'package:fugi_meet_3/shared/shared.dart';

class DetailItemTitle extends StatelessWidget {
  const DetailItemTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Wooden Coff',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),
          ),
          Text(
            '\$240',
            style: TextStyle(
              fontSize: 26,
              color: AppColor.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
