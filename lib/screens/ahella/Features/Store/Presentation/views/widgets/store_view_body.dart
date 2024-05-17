import 'package:fibrohospital/screens/ahella/Core/widgets/custom_header_section.dart';
import 'package:fibrohospital/screens/ahella/Core/widgets/custom_text_form_field.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/views/widgets/store_categories_section.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/views/widgets/store_list_view.dart';
import 'package:flutter/material.dart';

class StoreViewBody extends StatelessWidget {
  const StoreViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderSection(title: 'Store', onTap: () => Navigator.pop(context)),
        const SizedBox(height: 34),
        const CustomTextFormField(
          suffixIcon: Icon(Icons.close),
          prefixIcon: Icon(Icons.search_rounded),
          hintText: 'Search',
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 18),
        const StoreCategoriesSection(),
        const SizedBox(height: 8),
        const Expanded(child: StoreListView()),
      ],
    );
  }
}
