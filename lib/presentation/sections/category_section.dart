import 'package:flutter/material.dart';
import 'package:fugi_meet_3/shared/colors.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({
    super.key,
    required this.category,
  });

  final List<String> category;

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      height: 40,
      child: ListView.builder(
        itemCount: widget.category.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              current = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(
              color: current == index ? AppColor.greyColor : Colors.transparent,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              widget.category[index],
              style: TextStyle(
                color: current == index ? Colors.white : AppColor.greyColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
