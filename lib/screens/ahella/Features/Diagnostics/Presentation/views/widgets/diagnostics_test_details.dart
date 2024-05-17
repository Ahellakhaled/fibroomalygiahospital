import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiagnosticsTestDetails extends StatelessWidget {
  const DiagnosticsTestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                          'assets/ahella/free-home-background.svg'),
                      SvgPicture.asset('assets/ahella/free-home.svg'),
                    ],
                  ),
                  const SizedBox(width: 8), // SizedBox
                  const Text(
                    'Free home\nSample pickup',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                          'assets/ahella/associate-background.svg'),
                      SvgPicture.asset('assets/ahella/associate.svg'),
                    ],
                  ),
                  const SizedBox(width: 8), // SizedBox
                  const Text(
                    'Practo\nasociate labs',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/ahella/report-background.svg'),
                      SvgPicture.asset('assets/ahella/report.svg'),
                    ],
                  ),
                  const SizedBox(width: 8), // SizedBox
                  const Text(
                    'E-Reports in \n24-72 hours',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/ahella/follow-background.svg'),
                      SvgPicture.asset('assets/ahella/follow.svg'),
                    ],
                  ),
                  const SizedBox(width: 8), // SizedBox
                  const Text(
                    'Free follow-up\nwith a doctor',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
