import 'package:determinants_evaluation/screens/second_order_screen.dart';
import 'package:determinants_evaluation/logic/third_order_determinant.dart';
import 'package:flutter/material.dart';

class ThirdOrderScreen extends StatefulWidget {
  ThirdOrderScreen({Key key}) : super(key: key);

  @override
  _ThirdOrderScreenState createState() => _ThirdOrderScreenState();
}

class _ThirdOrderScreenState extends State<ThirdOrderScreen> {
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
    final aController = TextEditingController();
    final bController = TextEditingController();
    final cController = TextEditingController();
    final dController = TextEditingController();
    final eController = TextEditingController();
    final fController = TextEditingController();
    final gController = TextEditingController();
    final hController = TextEditingController();
    final iController = TextEditingController();

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
                ]),
                TableRow(children: [
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
                ]),
                TableRow(children: [
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
                  Container(
                    child: NumFormField(cController: iController, label: "i"),
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
                      iController.text != "") {
                    a = double.parse(aController.text);
                    b = double.parse(bController.text);
                    c = double.parse(cController.text);
                    d = double.parse(dController.text);
                    e = double.parse(eController.text);
                    f = double.parse(fController.text);
                    g = double.parse(gController.text);
                    h = double.parse(hController.text);
                    i = double.parse(iController.text);
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                                ThirdOrderDeterminant(a, b, c, d, e, f, g, h, i)
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
              height: 40,
            ),
            Text(result)
          ],
        ),
      ),
    );
  }
}
