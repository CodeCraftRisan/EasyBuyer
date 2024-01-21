import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/t_rounded_image.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../../utils/constants/image_strings.dart';


class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    /// Container with side poddings, color, edges, radius and shadow.
    var productImagel;
    return Container(
        width: 180,
        padding: const EdgeInsets.all(1),
    decoration: BoxDecoration(
    boxShadow: [TShadowStyle.verticalProductShadow],
    borderRadius: BorderRadius.circular (TSizes.productImageRadius),
    color: dark? TColors.darkerGrey: TColors.white,
    ),// BoxDecoration
    child: Column(
    children: [
    /// Thumbnail, Wishlist Button, Discount Tog
    TRoundedContainer(
    height: 180,
    padding: const EdgeInsets.all(TSizes.sm),
    backgroundColor: dark? TColors.dark: TColors.light,
    child: Stack(
    children: [
    /// Thumbnail Image
    const TRoundedImage(imageUrl: TImages.productImagel, applyImageRadius: true),
    /// Sale Tog
    Positioned(
    top: 12,
    child: TRoundedContainer(
    radius: TSizes.sm,
    backgroundColor: TColors.secondary.withOpacity(0.8),
    padding: const EdgeInsets.symmetric (horizontal: TSizes.sm, vertical: TSizes.xs),
    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
    ), // TRoundedContainer
    ),
    const Positioned(
    top: 0,
    right: 0,
    child: TCircularIcon(icon: Iconax.heart5, Colors.red),
    )
    ]
    ),

}




}