import 'package:fibrohospital/screens/ahella/Core/theming/my_colors.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_header_section.dart';
import 'package:fibrohospital/screens/ahella/Features/Cart/views/widgets/cart_details_section.dart';
import 'package:fibrohospital/screens/ahella/Features/Cart/views/widgets/cart_footer_section.dart';
import 'package:fibrohospital/screens/ahella/Features/Cart/views/widgets/cart_items_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CartViewBody extends StatelessWidget {
  const CartViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomHeaderSection(
              title: 'Cart', onTap: () => Navigator.pop(context)),
          const SizedBox(height: 28),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: MyColors.green,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'IN YOUR CART',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 4),
                SvgPicture.asset('assets/ahella/cart.svg')
              ],
            ),
          ),
          const SizedBox(height: 44),
          const CartItemsSection(),
          const SizedBox(height: 44),
           CartDetailsSection(),
          const SizedBox(height: 44),
          const CartFooterSection(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
