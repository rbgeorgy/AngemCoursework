import 'second_order_determinant.dart';

class ThirdOrderDeterminant {
  SecondOrderDeterminant minorForA;
  SecondOrderDeterminant minorForB;
  SecondOrderDeterminant minorForC;
  double a;
  double b;
  double c;

  ThirdOrderDeterminant(double a, double b, double c, double d, double e,
      double f, double g, double h, double i) {
    this.a = a;
    this.b = b;
    this.c = c;
    minorForA = new SecondOrderDeterminant(e, f, h, i);
    minorForB = new SecondOrderDeterminant(d, f, g, i);
    minorForC = new SecondOrderDeterminant(d, e, g, h);
  }

  double eval() {
    return a * minorForA.eval() - b * minorForB.eval() + c * minorForC.eval();
  }
}
