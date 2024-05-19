import 'package:fibrohospital/screens/ahella/Core/helpers/show_successful_order_dialog.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_header_section.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_text_form_field.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/payment_options_view.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/widgets/payment_option_is_selected_leading_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../ui/log_in_and_sign_in/widgets/custom_Text_field.dart';
class CreditDetailsViewBody extends StatefulWidget {
  const CreditDetailsViewBody({
    super.key,
  });

  @override
  State<CreditDetailsViewBody> createState() => _CreditDetailsViewBodyState();
}


class _CreditDetailsViewBodyState extends State<CreditDetailsViewBody> {
  late final TextEditingController _nameController;
  late final TextEditingController _cardNumberController;
  late final TextEditingController _emailController;
  late final TextEditingController _expiryDate1Controller;
  late final TextEditingController _expiryDate2Controller;
  late final FocusNode _nameFocusNode;
  late final FocusNode _cardNumberFocusNode;
  late final FocusNode _emailFocusNode;
  late final FocusNode _expiryDate1FocusNode;
  late final FocusNode _expiryDate2FocusNode;

  late final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;
  bool obscureText = true;
  @override
  void initState() {
    _nameController = TextEditingController();
    _cardNumberController = TextEditingController();
    _emailController = TextEditingController();
    _expiryDate1Controller = TextEditingController();
    _expiryDate2Controller = TextEditingController();
    _expiryDate1FocusNode = FocusNode();
    _expiryDate2FocusNode = FocusNode();
    _cardNumberFocusNode = FocusNode();
    _nameFocusNode = FocusNode();
    _emailFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cardNumberController.dispose();
    _emailController.dispose();
    _expiryDate1Controller.dispose();
    _expiryDate2Controller.dispose();
    _expiryDate1FocusNode.dispose();
    _expiryDate2FocusNode.dispose();
    _cardNumberFocusNode.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    super.dispose();
  }
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
                 CustomTextFieldTwo(
                  keyboardType: TextInputType.number,
                  controller: _cardNumberController,
                  focusNode: _cardNumberFocusNode,
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
               Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomTextFieldTwo(
                        keyboardType: TextInputType.number,
                        controller: _expiryDate1Controller,
                        focusNode:_expiryDate1FocusNode,
                        hintText: 'Jan',
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),

                    ),
                    SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: CustomTextFieldTwo(
                        keyboardType: TextInputType.number,
                        hintText: '2023',
                        controller: _expiryDate2Controller,
                        focusNode:_expiryDate2FocusNode,
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
                CustomTextFieldTwo(
                  keyboardType: TextInputType.name,

                  hintText: ' Enter your Name',

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
                CustomTextFieldTwo(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'AA@gmail.com',
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
