import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/credit_details_view.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/widgets/select_payment_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/helpers/show_successful_order_dialog.dart';

class VisaOptionsViewBody extends StatefulWidget {
  const VisaOptionsViewBody({super.key});

  @override
  State<VisaOptionsViewBody> createState() => _VisaOptionsViewBodyState();
}

class _VisaOptionsViewBodyState extends State<VisaOptionsViewBody> {
  bool isVisaSelected = false;
  bool isCashSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Payment Options',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 34),
          SelectPaymentOptionWidget(
            title: 'Visa',
            isSelected: isVisaSelected,
            trailing: Row(
              children: [
                SvgPicture.asset('assets/ahella/visa.svg'),
                const SizedBox(width: 8),
                SvgPicture.asset('assets/ahella/master-card.svg'),
              ],
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                    return const CreditDetailsView();
                  }));
            },
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
