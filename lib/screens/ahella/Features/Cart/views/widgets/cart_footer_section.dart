import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Features/Payment/Presentation/views/payment_options_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../ui/log_in_and_sign_in/cubits/log_in_cubit/log_in_cubit.dart';

class CartFooterSection extends StatelessWidget {
  const CartFooterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: CustomElevatedButton(
        text: 'Go to Payment',
         onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const PaymentOptionsView()),);
         }







    //()async {
        //     BlocProvider.of<LogInCubit>(context).loginUser(
        //         context: context,
        //         formKey: _formKey,
        //         emailController: _emailController,
        //         passwordController: _passwordController
        //     );
        //   },


      ),
    );
  }
}
