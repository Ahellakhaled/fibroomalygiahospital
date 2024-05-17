import 'package:fibrohospital/screens/ahella/Core/helpers/show_successful_order_dialog.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_header_section.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_text_form_field.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/payment_options_view.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/widgets/payment_option_is_selected_leading_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CreditDetailsViewBody extends StatelessWidget {
  const CreditDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomHeaderSection(
            title: 'Credit Details',
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context){return PaymentOptionsView();}))
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 24,
              top: 60,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Card Number',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff000000),
                      ),
                    ),
                    SvgPicture.asset('assets/ahella/master-card.svg'),
                  ],
                ),
                const SizedBox(height: 9),
                const CustomTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: '+8801000000000',
                ),
                const SizedBox(height: 20),
                const Text(
                  'Expiry Date',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 9),
                const Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomTextFormField(
                        keyboardType: TextInputType.number,
                        hintText: 'Jan',
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: CustomTextFormField(
                        keyboardType: TextInputType.number,
                        hintText: '2023',
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 9),
                const CustomTextFormField(
                  keyboardType: TextInputType.name,
                  hintText: 'Abdullah Mamun',
                ),
                const SizedBox(height: 20),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 9),
                const CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'itsmemamun1@gmail.com',
                ),
              ],
            ),
          ),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                PaymentOptionIsSelectedLeadingIcon(),
                SizedBox(width: 10),
                Text(
                  'Save For Future Payment',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff677294),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: CustomElevatedButton(
                    text: 'Cancel',onPressed: () {
                    Navigator.pushReplacement(
                        context,MaterialPageRoute(builder: (context){return PaymentOptionsView();}));
                  })
                   // onPressed: () => Navigator.of(context).push(
            //MaterialPageRoute(builder: (context) => const PaymentOptionsView()),
          //),
    ),

                const SizedBox(width: 20),
                Expanded(
                  child: CustomElevatedButton(
                    text: 'Pay Now',
                    onPressed: () {
                      showSuccessfulOrderDialog(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
