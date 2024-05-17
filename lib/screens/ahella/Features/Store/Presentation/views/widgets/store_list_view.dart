import 'package:fibrohospital/screens/ahella/Features/Store/Presentation/Manager/cubit/store_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'store_list_view_item.dart';

class StoreListView extends StatelessWidget {
  const StoreListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreCubit, StoreState>(
      builder: (context, state) {
        return ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) => StoreListViewItem(
            storeModel: BlocProvider.of<StoreCubit>(context)
                    .stores[BlocProvider.of<StoreCubit>(context).currentIndex]
                [index],
          ),
          itemCount: BlocProvider.of<StoreCubit>(context)
              .stores[BlocProvider.of<StoreCubit>(context).currentIndex]
              .length,
        );
      },
    );
  }
}
