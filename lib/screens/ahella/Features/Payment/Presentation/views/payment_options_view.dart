import 'package:flutter/material.dart';

import 'widgets/payment_options_view_body.dart';

class PaymentOptionsView extends StatelessWidget {
  const PaymentOptionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: const Color(0xffF5F5F5),
        title: const Text('Back'),
        centerTitle: false,
      ),
      body: const PaymentOptionsViewBody(),
    );
  }
}
