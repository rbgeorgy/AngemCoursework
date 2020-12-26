class SecondOrderDeterminant {
  List data;

  void init() {
    data = List.generate(2, (i) => List(2), growable: false);
  }

  SecondOrderDeterminant(double a, double b, double c, double d) {
    init();
    data[0][0] = a;
    data[0][1] = b;
    data[1][0] = c;
    data[1][1] = d;
  }

  double eval() {
    return data[0][0] * data[1][1] - data[0][1] * data[1][0];
  }
}
