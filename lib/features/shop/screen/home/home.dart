import 'package:easybuyer/common/widgets/images/t_rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:easybuyer/features/shop/screens/home/widgets/home_categories.dart';
import 'package:easybuyer/features/shop/screen/home/home.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

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
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TRoundedImage(imageUrl: TImages.promoBanner4),
              )
          ],
        ),
      ), //SingleChildScrollView
      ],
    ),
    ),
    );
  }
}

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor = TColors.light,
    this.fit,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,


  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(border: border, color: backgroundColor, borderRadius: BorderRadius.circular(borderRadius)),
      child: ClipRRect(
        borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
        child: Image ( fit: fit, image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider),

      ),
    ),// ClipRRect
    );
  }
}