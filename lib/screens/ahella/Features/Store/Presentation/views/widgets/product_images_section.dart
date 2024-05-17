import 'package:fibrohospital/screens/ahella/Core/widgets/custom_elevated_button.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Data/Models/store_model.dart';
import 'package:flutter/material.dart';
class ProductImagesSection extends StatelessWidget {
  const ProductImagesSection({super.key, required this.storeModel});

  final StoreModel storeModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 75,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              scrollDirection: Axis.horizontal,
              itemCount: storeModel.images.length - 1,
              itemBuilder: (context, index) {
                return Container(
                  width: 75,
                  height: 75,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black.withOpacity(0.25)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      storeModel.images[index + 1],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(width: 20),
        CustomElevatedButton(
          text: 'Add To Cart',
          onPressed: () {},
        ),
      ],
    );
  }
}
