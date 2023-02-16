import 'package:flutter_bloc/flutter_bloc.dart';


class FirstPageIndicator extends Cubit<double> {
  FirstPageIndicator() : super(0);
  void goToPage(double? page) {
    if (page == 1) {
      emit(25);
    }
    if (page == 2) {
      emit(50);
    }
    if (page == 3) {
      emit(75);
    }
    if (page == 4) {
      emit(100);
    }
    if (page == 0) {
      emit(25);
    }
    if (page == null){
    }
  }
}
