import 'package:flutter/material.dart';
import 'package:fugi_meet_3/presentation/Detailpage/component/detail_color.dart';
import 'package:fugi_meet_3/presentation/Detailpage/component/detail_desc.dart';
import 'package:fugi_meet_3/presentation/Detailpage/component/detail_item_quality.dart';
import 'package:fugi_meet_3/presentation/Detailpage/component/detail_item_title.dart';
import 'package:fugi_meet_3/presentation/Detailpage/component/detail_rating.dart';
import 'package:fugi_meet_3/shared/assets.dart';
import 'package:fugi_meet_3/shared/colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Detail'),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.share,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  MainAssets.woodenCoff,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 450),
            padding: const EdgeInsets.symmetric(
              vertical: 32,
              horizontal: 24,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DetailItemTitle(),
                const DetailRating(),
                const DetailColorSection(),
                const DetailItemQuality(),
                const SizedBox(height: 16),
                const DetailItemDesc(),
                Container(
                  width: double.infinity,
                  height: 48,
                  margin: const EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColor.greyColor,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'ADD TO CART',
                      style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
