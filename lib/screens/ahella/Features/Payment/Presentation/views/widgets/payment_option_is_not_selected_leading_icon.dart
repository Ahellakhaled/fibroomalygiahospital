import 'package:flutter/material.dart';

class PaymentOptionIsNotSelectedLeadingIcon extends StatelessWidget {
  const PaymentOptionIsNotSelectedLeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(color: Colors.black, width: 1),
        ),
      ),
    );
  }
}
