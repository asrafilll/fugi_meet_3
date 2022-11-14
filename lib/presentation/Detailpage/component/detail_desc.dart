import 'package:flutter/material.dart';
import 'package:fugi_meet_3/shared/shared.dart';

class DetailItemDesc extends StatelessWidget {
  const DetailItemDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Curabitur commodo turpis id placerat mattis. Mauris euismod arcu id orci fringilla sodales. Proin congue eleifend ipsum, eleifend porttitor mi ullamcorper.',
      style: TextStyle(
        color: AppColor.lightGrey,
      ),
    );
  }
}
