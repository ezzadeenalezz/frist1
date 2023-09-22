import 'package:flutter/material.dart';

class ezz extends StatefulWidget {
  const ezz({super.key});

  @override
  State<ezz> createState() => _ezzState();
}

class _ezzState extends State<ezz> {
  final _text = TextEditingController();
  var userpost = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            child: Center(
                child: Text(
              "$userpost",
              style: TextStyle(fontSize: 35),
            )),
            color: Color.fromARGB(255, 29, 230, 163),
          )),
          TextField(
            controller: _text,
            decoration: InputDecoration(
              hintText: 'ادخل نص',
              border: const OutlineInputBorder(),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                userpost = _text.text.length;
              });
            },
            color: const Color.fromARGB(255, 0, 32, 48),
            child: const Text(
              'عرض',
              style: TextStyle(color: Colors.white),
            ),
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                _text.clear();
              });
            },
            color: const Color.fromARGB(255, 0, 32, 48),
            child: const Text(
              'حذف',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    )));
  }
}
