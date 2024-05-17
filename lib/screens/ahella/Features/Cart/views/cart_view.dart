import 'package:fibrohospital/screens/ahella/Core/widgets/scaffold_background.dart';
import 'package:flutter/material.dart';
import 'widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SizedBox(
          height: double.infinity,
          child: SafeArea(
            child: CartViewBody(),
          ),
        ),
      ),
    );
  }
}
