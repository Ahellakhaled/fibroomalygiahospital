import 'package:fibrohospital/screens/ahella/Core/widgets/scaffold_background.dart';
import 'package:flutter/material.dart';

import 'widgets/store_view_body.dart';

class StoreView extends StatelessWidget {
  const StoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: StoreViewBody(),
        ),
      ),
    );
  }
}
