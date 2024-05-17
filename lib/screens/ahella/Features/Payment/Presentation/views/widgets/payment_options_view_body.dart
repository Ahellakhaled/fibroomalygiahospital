import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/credit_details_view.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/widgets/select_payment_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../Core/helpers/show_successful_order_dialog.dart';

class PaymentOptionsViewBody extends StatefulWidget {
  const PaymentOptionsViewBody({super.key});

  @override
  State<PaymentOptionsViewBody> createState() => _PaymentOptionsViewBodyState();
}

class _PaymentOptionsViewBodyState extends State<PaymentOptionsViewBody> {
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
              setState(() {
                isVisaSelected = !isVisaSelected;
                isCashSelected = false;
              });
            },
          ),
          const SizedBox(height: 14),
          SelectPaymentOptionWidget(
            title: 'Cash on Delivery',
            isSelected: isCashSelected,
            trailing: SvgPicture.asset('assets/ahella/Cash.svg',
                width: 48, height: 48),
            onTap: () {
              setState(() {
                isCashSelected = !isCashSelected;
                isVisaSelected = false;
              });
            },
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  onPressed: () {
                    showSuccessfulOrderDialog(context);
                  },
                  text: 'Pay',
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
