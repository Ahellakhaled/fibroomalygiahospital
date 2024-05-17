import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_header_section.dart';
import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Presentation/views/diagonstics_tests_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class DiagnosticsBookViewBody extends StatelessWidget {
  const DiagnosticsBookViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeaderSection(
          title: 'Diagnostics Tests',
          onTap: () => Navigator.pop(context),
        ),
        const Spacer(),
        SvgPicture.asset('assets/ahella/book-diagnostics.svg'),
        const SizedBox(height: 40),
        const Text(
          'You haven’t booked any tests yet',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff222222),
          ),
        ),
        const Text(
          'Get started with your first health checkup',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff677294),
          ),
        ),
        const SizedBox(height: 36),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: CustomElevatedButton(
            text: 'Book Now',
            onPressed: () {
    Navigator.push(
    context,MaterialPageRoute(builder: (context){return DiagnosticsTestView();}));
    })
        ),
        const Spacer(),
      ],
    );
  }
}
