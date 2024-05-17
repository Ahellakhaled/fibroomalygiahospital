import 'package:fibrohospital/screens/ahella/Core/widgets/scaffold_background.dart';
import 'package:flutter/material.dart';

import 'widgets/diagnostics_book_view_body.dart';

class DiagnosticsBookView extends StatelessWidget {
  const DiagnosticsBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScaffoldBackground(
        child: SafeArea(
          child: DiagnosticsBookViewBody(),
        ),
      ),
    );
  }
}
