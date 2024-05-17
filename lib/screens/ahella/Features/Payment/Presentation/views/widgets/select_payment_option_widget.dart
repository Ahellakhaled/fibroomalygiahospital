import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/widgets/payment_option_is_not_selected_leading_icon.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/widgets/payment_option_is_selected_leading_icon.dart';
import 'package:flutter/material.dart';
class SelectPaymentOptionWidget extends StatelessWidget {
  const SelectPaymentOptionWidget({
    super.key,
    required this.title,
    required this.trailing,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final Widget trailing;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xffEFF2F1),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            isSelected
                ? const PaymentOptionIsSelectedLeadingIcon()
                : const PaymentOptionIsNotSelectedLeadingIcon(),
            const SizedBox(width: 14),
            Text(title, style: const TextStyle(fontSize: 18)),
            const Spacer(),
            trailing,
          ],
        ),
      ),
    );
  }
}
