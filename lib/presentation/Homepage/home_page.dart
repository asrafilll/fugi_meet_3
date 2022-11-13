import 'package:flutter/material.dart';
import 'package:fugi_meet_3/presentation/Homepage/sections/category_section.dart';
import 'package:fugi_meet_3/presentation/Homepage/sections/recommended_section.dart';
import 'package:fugi_meet_3/shared/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category = [
    'All',
    'Living Room',
    'Bedroom',
    'Dining Room',
    'Kitchen',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.notes),
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        child: ListView(
          children: [
            const Text(
              'Discover the most\nModern Furniture',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            CategorySection(category: category),
            const RecommendedSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: AppColor.greyColor,
        unselectedItemColor: AppColor.lightGrey,
      ),
    );
  }
}
