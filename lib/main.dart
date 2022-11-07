import 'package:ci_tests_app/components/custom_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FirstWidget());
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App teste',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const SecondWidget(title: 'Teste'),
    );
  }
}

class SecondWidget extends StatefulWidget {
  const SecondWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SecondWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CustomButton(
              onPressed: () => {
                debugPrint('Button 1 has been pressed'),
              },
              color: Colors.indigo,
              text: 'Botão 1',
            ),
            CustomButton(
              onPressed: () => {
                debugPrint('Button 2 has been pressed'),
              },
              color: Colors.green,
              text: 'Botão 2',
            ),
          ],
        ),
      ),
    );
  }
}
