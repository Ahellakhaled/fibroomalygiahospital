import 'package:fibrohospital/screens/ahella/Features/Cart/views/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartItemsSection extends StatelessWidget {
  const CartItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CartItem(),
        SizedBox(height: 10),
        CartItem(),
      ],
    );
  }
}
