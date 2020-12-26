import 'package:determinants_evaluation/logic/second_order_determinant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondOrderScreen extends StatefulWidget {
  SecondOrderScreen({Key key}) : super(key: key);

  @override
  _SecondOrderScreenState createState() => _SecondOrderScreenState();
}

class _SecondOrderScreenState extends State<SecondOrderScreen> {
  @override
  Widget build(BuildContext context) {
    String result = "";
    double a;
    double b;
    double c;
    double d;
    final aController = TextEditingController();
    final bController = TextEditingController();
    final cController = TextEditingController();
    final dController = TextEditingController();

    @override
    void dispose() {
      aController.dispose();
      bController.dispose();
      cController.dispose();
      dController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("2-ой порядок"),
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
                ]),
                TableRow(children: [
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
                      dController.text != "") {
                    a = double.parse(aController.text);
                    b = double.parse(bController.text);
                    c = double.parse(cController.text);
                    d = double.parse(dController.text);
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(SecondOrderDeterminant(a, b, c, d)
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

class NumFormField extends StatelessWidget {
  const NumFormField(
      {Key key, @required this.cController, @required this.label})
      : super(key: key);

  final TextEditingController cController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: cController,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
          labelText: label,
          hintText: "",
        ));
  }
}
