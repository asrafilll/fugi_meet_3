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
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recommended Furnitures',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              RecommendedTile(
                productImg: product[0]['productImg'],
                productTitle: product[0]['productTitle'],
                productPrice: product[0]['productPrice'].toString(),
                rating: product[0]['rating'].toString(),
              ),
              const SizedBox(width: 16),
              RecommendedTile(
                productImg: product[1]['productImg'],
                productTitle: product[1]['productTitle'],
                productPrice: product[1]['productPrice'].toString(),
                rating: product[1]['rating'].toString(),
              ),
            ],
          ),
          Row(
            children: [
              RecommendedTile(
                productImg: product[2]['productImg'],
                productTitle: product[2]['productTitle'],
                productPrice: product[2]['productPrice'].toString(),
                rating: product[2]['rating'].toString(),
              ),
              const SizedBox(width: 16),
              RecommendedTile(
                productImg: product[3]['productImg'],
                productTitle: product[3]['productTitle'],
                productPrice: product[3]['productPrice'].toString(),
                rating: product[3]['rating'].toString(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
