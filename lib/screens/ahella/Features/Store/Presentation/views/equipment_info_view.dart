import 'package:fibrohospital/screens/ahella/Core/widgets/scaffold_background.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Data/Models/store_model.dart';
import 'package:flutter/material.dart';
import 'widgets/equipment_info_view_body.dart';

class EquipmentInfoView extends StatelessWidget {
  const EquipmentInfoView({super.key, required this.storeModel});

  final StoreModel storeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldBackground(
        child: SizedBox(
          height: double.infinity,
          child: SafeArea(
            child: EquipmentInfoViewBody(storeModel: storeModel),
          ),
        ),
      ),
    );
  }
}
