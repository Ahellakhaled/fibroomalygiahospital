import 'package:fibrohospital/screens/ahella/Core/widgets/custom_header_section.dart';
import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Presentation/views/widgets/diagnostics_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'diagnostics_test_details.dart';

class DiagnosticsTestViewBody extends StatelessWidget {
  const DiagnosticsTestViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderSection(
          title: 'Diagnostics Tests',
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(height: 23),
        const Text(
          'Get Full body health checkups from the comfort of your home.',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 7),
        const Text(
          'Upto 45% off + get 10% healthcash back',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Color(0xff0EBE7F),
          ),
        ),
        const SizedBox(height: 20),
        const DiagnosticsTestDetails(),
        const SizedBox(height: 23),
        const Text(
          'Recommend for you',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const Expanded(child: DiagnosticsListView()),
      ],
    );
  }
}
