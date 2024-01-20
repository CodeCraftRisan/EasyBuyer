import 'package:flutter/material.dart';
import 'package:easybuyer/features/shop/screens/home/widgets/home_categories.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
                child: Column(
                children: [
                THomeAppBar(),
            SizedBox(height: TSizes.spaceBtwSections),

            TSearchContainer(text: 'Search in Store'),
            SizedBox(height: TSizes.spaceBtwSections),
            /// Categories
            Padding(
              padding: EdgeInsets.only(left: TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white),
                  SizedBox(height: TSizes.spaceBtwItems),
                  /// Categories
                  THomeCategories(),
                ],
              ),
            )
          ],
        ),
      ),
      ],
    ),
    ),
    );
  }
}
