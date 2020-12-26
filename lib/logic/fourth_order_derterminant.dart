import 'third_order_determinant.dart';

class FourthOrderDeterminant {
  ThirdOrderDeterminant minorForA;
  ThirdOrderDeterminant minorForB;
  ThirdOrderDeterminant minorForC;
  ThirdOrderDeterminant minorForD;
  double a;
  double b;
  double c;
  double d;
  FourthOrderDeterminant(
    double a,
    double b,
    double c,
    double d,
    double e,
    double f,
    double g,
    double h,
    double i,
    double j,
    double k,
    double l,
    double m,
    double n,
    double o,
    double p,
  ) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
    minorForA = new ThirdOrderDeterminant(f, g, h, j, k, l, n, o, p);
    minorForB = new ThirdOrderDeterminant(e, g, h, i, k, l, m, o, p);
    minorForC = new ThirdOrderDeterminant(e, f, h, i, j, l, m, n, p);
    minorForD = new ThirdOrderDeterminant(e, f, g, i, j, k, m, n, o);
  }

  double eval() {
    return a * minorForA.eval() -
        b * minorForB.eval() +
        c * minorForC.eval() -
        d * minorForD.eval();
  }
}
