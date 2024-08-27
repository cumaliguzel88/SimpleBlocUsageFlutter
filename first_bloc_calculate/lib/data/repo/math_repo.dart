class MathRepo {
  //fx for sum
  double calculateSum(String pnum1, String pnum2) {
    double num1 = double.parse(pnum1);
    double num2 = double.parse(pnum2);
    double sum = num1 + num2;
    return sum;
  }

  //fx for multi
  double calculateMulti(String pnum1, String pnum2) {
    double num1 = double.parse(pnum1);
    double num2 = double.parse(pnum2);
    double sum = num1 * num2;
    return sum;
  }
}
