import 'package:determinants_evaluation/logic/fourth_order_derterminant.dart';
import 'package:flutter/material.dart';

import 'second_order_screen.dart';

class FourthOrderScreen extends StatefulWidget {
  FourthOrderScreen({Key key}) : super(key: key);

  @override
  _FourthOrderScreenState createState() => _FourthOrderScreenState();
}

class _FourthOrderScreenState extends State<FourthOrderScreen> {
  @override
  Widget build(BuildContext context) {
    String result = "";
    double a;
    double b;
    double c;
    double d;
    double e;
    double f;
    double g;
    double h;
    double i;

    double j;
    double k;
    double l;
    double m;
    double n;
    double o;
    double p;
    final aController = TextEditingController();
    final bController = TextEditingController();
    final cController = TextEditingController();
    final dController = TextEditingController();
    final eController = TextEditingController();
    final fController = TextEditingController();
    final gController = TextEditingController();
    final hController = TextEditingController();
    final iController = TextEditingController();

    final jController = TextEditingController();
    final kController = TextEditingController();
    final lController = TextEditingController();
    final mController = TextEditingController();
    final nController = TextEditingController();
    final oController = TextEditingController();
    final pController = TextEditingController();

    @override
    void dispose() {
      aController.dispose();
      bController.dispose();
      cController.dispose();
      dController.dispose();
      eController.dispose();
      fController.dispose();
      gController.dispose();
      hController.dispose();
      iController.dispose();

      jController.dispose();
      kController.dispose();
      lController.dispose();
      mController.dispose();
      nController.dispose();
      oController.dispose();
      pController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("3-й порядок"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Table(
              children: [
                TableRow(children: [
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: aController, label: "a"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: bController, label: "b"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: cController, label: "c"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: dController, label: "d"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                ]),
                TableRow(children: [
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: eController, label: "e"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: fController, label: "f"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: gController, label: "g"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: hController, label: "h"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                ]),
                TableRow(children: [
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: iController, label: "i"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: jController, label: "j"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: kController, label: "k"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: lController, label: "l"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                ]),
                TableRow(children: [
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: mController, label: "m"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: nController, label: "n"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: oController, label: "o"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                  Container(
                    child: NumFormField(cController: pController, label: "p"),
                  ),
                  SizedBox(
                    width: 5,
                    height: 0,
                  ),
                ])
              ],
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {
                  if (aController.text != "" &&
                      bController.text != "" &&
                      cController.text != "" &&
                      dController.text != "" &&
                      eController.text != "" &&
                      fController.text != "" &&
                      gController.text != "" &&
                      hController.text != "" &&
                      iController.text != "" &&
                      jController.text != "" &&
                      kController.text != "" &&
                      lController.text != "" &&
                      mController.text != "" &&
                      nController.text != "" &&
                      oController.text != "" &&
                      pController.text != "") {
                    a = double.parse(aController.text);
                    b = double.parse(bController.text);
                    c = double.parse(cController.text);
                    d = double.parse(dController.text);
                    e = double.parse(eController.text);
                    f = double.parse(fController.text);
                    g = double.parse(gController.text);
                    h = double.parse(hController.text);
                    i = double.parse(iController.text);

                    j = double.parse(jController.text);
                    k = double.parse(kController.text);
                    l = double.parse(lController.text);
                    m = double.parse(mController.text);
                    n = double.parse(nController.text);
                    o = double.parse(oController.text);
                    p = double.parse(pController.text);
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(FourthOrderDeterminant(a, b, c, d, e,
                                    f, g, h, i, j, k, l, m, n, o, p)
                                .eval()
                                .toString()),
                          );
                        });
                  } else {
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text("Заполните поля!"),
                          );
                        });
                  }
                },
                child: Text("Посчитать")),
            SizedBox(
              height: 10,
            ),
            Text(result)
          ],
        ),
      ),
    );
  }
}
