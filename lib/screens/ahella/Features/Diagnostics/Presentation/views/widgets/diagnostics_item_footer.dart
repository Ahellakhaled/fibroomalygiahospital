import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Features/Diagnostics/Data/Models/diagnostics_model.dart';
import 'package:fibrohospital/screens/ui/patient/patient_search_doctor/patient_details_screen.dart';
import 'package:flutter/material.dart';

class DiagnosticsItemFooter extends StatelessWidget {
  const DiagnosticsItemFooter({super.key, required this.diagnosticsModel});

  final DiagnosticsModel diagnosticsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    diagnosticsModel.priceBeforeDiscount,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    diagnosticsModel.priceAfterDiscount,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff677294),
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    diagnosticsModel.discount,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff0EBE7E),
                    ),
                  ),
                ],
              ),
              Text(
                diagnosticsModel.offer,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff677294),
                ),
              ),
            ],
          ),
          CustomElevatedButton(
            text: 'Book Now',
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context){return PatientDetailsScreen();}));})
          ]));


  }
}
