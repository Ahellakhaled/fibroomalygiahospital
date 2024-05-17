import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/views/widgets/store_category_item.dart';
import 'package:flutter/material.dart';

class StoreCategoriesSection extends StatelessWidget {
  const StoreCategoriesSection({super.key});

  static const List<String> categories = [
    'All',
    'Physical Therapy',
    'Durable Medical',
    'Treatment Equipment',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => StoreCategoryItem(
          category: categories[index],
          index: index,
        ),
        itemCount: categories.length,
      ),
    );
  }
}
