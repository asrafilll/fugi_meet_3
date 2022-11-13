import 'package:flutter/material.dart';
import 'package:fugi_meet_3/presentation/component/recommended_tile.dart';

import '../../shared/shared.dart';

class RecommendedSection extends StatefulWidget {
  const RecommendedSection({super.key});

  @override
  State<RecommendedSection> createState() => _RecommendedSectionState();
}

class _RecommendedSectionState extends State<RecommendedSection> {
  List<Map<String, dynamic>> product = [
    {
      'name': 'tes',
      'img': MainAssets.brownArmChair,
      'price': '170',
      'rating': '2',
    },
    {
      'name': 'tes',
      'img': MainAssets.brownArmChair,
      'price': '170',
      'rating': '2',
    },
    {
      'name': 'tes',
      'img': MainAssets.brownArmChair,
      'price': '170',
      'rating': '2',
    },
    {
      'name': 'tes',
      'img': MainAssets.brownArmChair,
      'price': '170',
      'rating': '2',
    },
    {
      'name': 'tes',
      'img': MainAssets.brownArmChair,
      'price': '170',
      'rating': '2',
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
          SizedBox(
            height: 500,
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 50,
              children: List.generate(product.length, (index) {
                return RecommendedTile(
                  productImg: product[index]['img'],
                  productTitle: product[index]['name'],
                  productPrice: product[index]['price'],
                  rating: product[index]['rating'],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
