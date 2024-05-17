import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Data/Models/diagnostics_model.dart';
import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Presentation/views/widgets/diagnostics_item_footer.dart';
import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Presentation/views/widgets/diagnostics_item_header.dart';
import 'package:flutter/material.dart';
class DiagnosticsItem extends StatelessWidget {
  const DiagnosticsItem({super.key, required this.diagnosticsModel});

  final DiagnosticsModel diagnosticsModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DiagnosticsItemHeader(diagnosticsModel: diagnosticsModel),
            const SizedBox(height: 18),
            Image.asset(
              diagnosticsModel.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 11),
            DiagnosticsItemFooter(diagnosticsModel: diagnosticsModel),
          ],
        ),
      ),
    );
  }
}
