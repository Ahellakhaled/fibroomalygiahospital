import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHeaderSection extends StatelessWidget {
  const CustomHeaderSection({
    super.key,
    required this.title,
    this.onTap,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: SvgPicture.asset('assets/ahella/back.svg'),
          ),
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff333333),
            ),
          ),
        ],
      ),
    );
  }
}
