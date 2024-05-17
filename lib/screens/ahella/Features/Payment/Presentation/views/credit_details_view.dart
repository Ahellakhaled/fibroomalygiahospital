import 'package:fibrohospital/screens/ahella/Core/widgets/scaffold_background.dart';
import 'package:flutter/material.dart';

import 'widgets/credit_details_view_body.dart';

class CreditDetailsView extends StatelessWidget {
  const CreditDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SizedBox(
          height: double.infinity,
          child: SafeArea(
            child: CreditDetailsViewBody(),
          ),
        ),
      ),
    );
  }
}
