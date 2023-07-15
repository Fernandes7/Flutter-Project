import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Displayvalue(countertext: _counter.toString(),)),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter = _counter + 1;
            });
          },
          child: const Icon(Icons.add)),
    );
  }
}

class Displayvalue extends StatelessWidget {
  final String countertext;

  const Displayvalue({super.key, required this.countertext});

  @override
  Widget build(BuildContext context) {
    return Text(countertext);
  }
}
