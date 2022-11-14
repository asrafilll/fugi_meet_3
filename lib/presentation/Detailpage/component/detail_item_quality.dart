import 'package:flutter/material.dart';
import 'package:fugi_meet_3/shared/shared.dart';

class DetailItemQuality extends StatefulWidget {
  const DetailItemQuality({super.key});

  @override
  State<DetailItemQuality> createState() => _DetailItemQualityState();
}

class _DetailItemQualityState extends State<DetailItemQuality> {
  int quality = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Select Quality :',
          style: TextStyle(
            color: AppColor.lightGrey,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(100),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: const Color(0XFFEAEBEC),
            ),
          ),
          child: Row(
            children: [
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    quality--;
                  });
                },
                icon: const Icon(
                  size: 16,
                  Icons.remove,
                  color: Color(0XFF9A9390),
                ),
              ),
              Container(
                height: 32,
                width: 42,
                color: const Color(0XFFEAEBEC),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    quality.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: () {
                  setState(() {
                    quality++;
                  });
                },
                icon: const Icon(
                  size: 16,
                  Icons.add,
                  color: Color(0XFF9A9390),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
