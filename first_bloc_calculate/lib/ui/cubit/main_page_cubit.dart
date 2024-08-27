import 'package:first_bloc_calculate/data/repo/math_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPageCubit extends Cubit<double> {
  MainPageCubit() : super(0.00);
//manage object
  var mathRepo = MathRepo();
  //method sum
  void calculateSum(String pnum1, String pnum2) {
    emit(mathRepo.calculateSum(pnum1, pnum2));
  }

  //method multi
  void calculateMulti(String pnum1, String pnum2) {
    emit(mathRepo.calculateMulti(pnum1, pnum2));
  }

  //delete method
  void delete() {
    emit(0.00);
  }
}
