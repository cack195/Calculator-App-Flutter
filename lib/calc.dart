import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'my_button.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white10,
          title: const Text("Calculator",  textScaleFactor: 1.5,),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: const Text('0 + 0'),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Text('0'),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       MyButton(buttonColor: Colors.orange, buttonText: 'C',),
                       MyButton(buttonColor: Colors.orange, buttonText: 'Del',),
                       MyButton(buttonColor: Colors.orange, buttonText: '%',),
                       MyButton(buttonColor: Colors.orange, buttonText: '/',),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '7',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '8',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '9',),
                       MyButton(buttonColor: Colors.orange, buttonText: 'x',),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '4',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '5',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '6',),
                       MyButton(buttonColor: Colors.orange, buttonText: '-',),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '1',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '2',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '3',),
                       MyButton(buttonColor: Colors.orange, buttonText: '+',),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '.',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '0',),
                       MyButton(buttonColor: Colors.lightBlue, buttonText: '00',),
                       MyButton(buttonColor: Colors.orange, buttonText: '=',),
                     ],
                   ),
                 ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButtonRow(List<MyButton> buttons) {
    return Expanded(
      child: Row(
        children: [
          for (final button in buttons)
            Expanded(
              child: button,
            ),
        ],
      ),
    );
  }
}
