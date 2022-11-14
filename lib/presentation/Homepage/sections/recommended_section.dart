import 'package:flutter/material.dart';
import 'package:fugi_meet_3/presentation/Homepage/component/recommended_tile.dart';

import '../../../shared/shared.dart';

class RecommendedSection extends StatefulWidget {
  const RecommendedSection({super.key});

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  List<Map<String, dynamic>> product = [
    {
      'productTitle': 'Stylish Chair',
      'productImg': MainAssets.stylishChair,
      'productPrice': 170,
      'rating': 4.8,
    },
    {
      'productTitle': 'Modern Table',
      'productImg': MainAssets.modernTable,
      'productPrice': 75,
      'rating': 4.9,
    },
    {
      'productTitle': 'Wooden Console',
      'productImg': MainAssets.woodenConsole,
      'productPrice': 240,
      'rating': 4.7,
    },
    {
      'productTitle': 'Brown Armchair',
      'productImg': MainAssets.brownArmChair,
      'productPrice': 210,
      'rating': 4.9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: product.length,
        itemBuilder: ((context, index) => RecommendedTile(
              productImg: product[index]['productImg'],
              productTitle: product[index]['productTitle'],
              productPrice: product[index]['productPrice'].toString(),
              rating: product[index]['rating'].toString(),
            )),
      ),
    );
  }
}
