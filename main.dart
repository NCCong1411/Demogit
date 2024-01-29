import 'package:flutter/material.dart';

class MyObject {
  int value;

  MyObject({
    required this.value,
  });

  // Phương thức tăng giá trị
  void increase() {
    value++;
  }

  // Phương thức giảm giá trị
  void decrease() {
    value--;
  }

  // Phương thức trả về giá trị
  int get getValue => this.value;

  // Phương thức đặt giá trị
  set setValue(int newValue) {
    this.value = newValue;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyObject _myObject = MyObject(value: 0);
  String? title;

  Widget _buildText() {
    return Text(
      'Giá trị: ${_myObject.getValue}',
      style: const TextStyle(fontSize: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person),
          title: Text(title ?? 'Debugging App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildText(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _myObject.increase();
                      });
                    },
                    child: const Text('Tăng giá trị'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _myObject.decrease();
                      });
                    },
                    child: const Text('Giảm giá trị'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _myObject.setValue = 141;
                      });
                    },
                    child: const Text('Đặt giá trị = 141'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




