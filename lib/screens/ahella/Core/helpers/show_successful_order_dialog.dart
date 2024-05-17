import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/views/store_view.dart';
import 'package:fibrohospital/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<dynamic> showSuccessfulOrderDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/ahella/like.svg'),
            const Text(
              'Thank You !',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w500,
                color: Color(0xff333333),
              ),
            ),
            const Text(
              'Your Order Successful',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color(0xff677294),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'You Purchased an Equipment the orders takes 2-4 days!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff677294),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButton(
                text: 'Done',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    routeHomeName,
                    (route) => false,
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return StoreView();
              })),
              child: const Text(
                'Continue ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff677294),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
