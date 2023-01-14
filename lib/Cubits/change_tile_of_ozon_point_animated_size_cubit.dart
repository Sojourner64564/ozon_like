import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeTileOfOzonPointAnimatedSize extends Cubit<int>{
  ChangeTileOfOzonPointAnimatedSize() : super(64);
  void hui(double chislo){
    if(chislo<64)
    emit(64-chislo.toInt());

  }

}