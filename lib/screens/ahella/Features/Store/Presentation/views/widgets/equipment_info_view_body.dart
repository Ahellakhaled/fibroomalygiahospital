import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_header_section.dart';
import 'package:fibrohospital/screens/ahella/Features/Cart/views/cart_view.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Data/Models/store_model.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/views/widgets/another_products_section.dart';
import 'package:flutter/material.dart';
import 'equipment_info_card.dart';
import 'product_images_section.dart';

class EquipmentInfoViewBody extends StatelessWidget {
  const EquipmentInfoViewBody({super.key, required this.storeModel});

  final StoreModel storeModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeaderSection(
            title: 'Equipment info',
            onTap: () => Navigator.pop(context),
          ),
          const SizedBox(height: 34),
          EquipmentInfoCard(storeModel: storeModel),
          const SizedBox(height: 20),
          Text(
            storeModel.description,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          ProductImagesSection(storeModel: storeModel),
          const SizedBox(height: 20),
          const AnotherProductsSection(),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              text: 'Go to Cart',
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CartView()),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
