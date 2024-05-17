import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Data/Models/diagnostics_model.dart';
import 'package:flutter/material.dart';

class DiagnosticsItemHeader extends StatelessWidget {
  const DiagnosticsItemHeader({super.key, required this.diagnosticsModel});

  final DiagnosticsModel diagnosticsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            diagnosticsModel.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            diagnosticsModel.subTitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color(0xff677294),
            ),
          ),
        ),
      ],
    );
  }
}
