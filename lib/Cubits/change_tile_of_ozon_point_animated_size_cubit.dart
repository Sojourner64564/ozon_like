import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeTileOfOzonPointAnimatedSize extends Cubit<int>{
  ChangeTileOfOzonPointAnimatedSize() : super(49);
  void hui(double chislo){
    if(chislo<49)
    emit(49-chislo.toInt());

    if(chislo>49)
      emit(0);


  }

}