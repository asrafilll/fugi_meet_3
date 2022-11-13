import 'package:flutter/material.dart';

import '../../shared/shared.dart';

class RecommendedTile extends StatelessWidget {
  const RecommendedTile({
    super.key,
    required this.productImg,
    required this.productTitle,
    required this.productPrice,
    required this.rating,
  });

  final String productImg;
  final String productTitle;
  final String productPrice;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Container(
            width: 185,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  productImg,
                ),
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 12,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productPrice,
                        style: const TextStyle(
                          fontSize: 20,
                          color: AppColor.greyColor,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColor.yellowColor,
                            size: 15,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            rating,
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColor.greyColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
