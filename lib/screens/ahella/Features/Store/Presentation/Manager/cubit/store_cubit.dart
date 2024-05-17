import 'package:fibrohospital/screens/ahella/Features/Store/Data/Models/store_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'store_state.dart';

class StoreCubit extends Cubit<StoreState> {
  StoreCubit() : super(StoreInitial());

  int currentIndex = 0;

  List<List<StoreModel>> stores = [
    StoreModel.all,
    StoreModel.treatmentEquipment,
    StoreModel.physicalTherapy,
    StoreModel.durableMedical,
  ];

  void changeCategory(int index) {
    emit(StoreLoading());
    currentIndex = index;
    emit(StoreLoaded());
  }
}
