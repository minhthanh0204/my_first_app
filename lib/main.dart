import 'package:flutter/material.dart';

void main() {
  printHello();
  runApp(const MainApp());
}

void printHello() {
  String name = 'Flutter';
  if (name == 'Dart') {
    print('Welcome to $name');
  } else {
    print('Hello $name');
  }
  for (var i = 0; i < 5; i++) {
    print('Number $i');
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List.generate(5, (index) => index + 1);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        // useMaterial3: false,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first app'),
        ),
        body: Center(
          child: numbers.isEmpty
              ? Text('No numbers available!')
              : Column(
                  children: numbers
                      .map(
                        (number) => ListTile(
                          title: Text('Number $number'),
                          leading: Icon(Icons.star),
                          trailing: Icon(Icons.keyboard_arrow_right),
                        ),
                      )
                      .toList(),
                ),
        ),
      ),
    );
  }
}
