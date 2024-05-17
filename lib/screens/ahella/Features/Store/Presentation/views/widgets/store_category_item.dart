import 'package:fibrohospital/screens/ahella/Core/theming/my_colors.dart';
import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/Manager/cubit/store_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreCategoryItem extends StatelessWidget {
  const StoreCategoryItem({
    super.key,
    required this.category,
    required this.index,
  });

  final String category;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreCubit, StoreState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () =>
              BlocProvider.of<StoreCubit>(context).changeCategory(index),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: BlocProvider.of<StoreCubit>(context).currentIndex == index
                  ? MyColors.green
                  : const Color(0xff0EBE7F).withOpacity(0.08),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              category,
              style: TextStyle(
                color:
                    BlocProvider.of<StoreCubit>(context).currentIndex == index
                        ? Colors.white
                        : const Color(0xff0EBE7F),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }
}
