import 'package:fibrohospital/core/widgets/title_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TextEffectWidget extends StatelessWidget {
  const TextEffectWidget({super.key, this.fontSize = 20, required this.label});
  final double fontSize;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 10),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitleTextWidget(
        label: label,
        fontSize: fontSize,
      ),
    );
  }
}
