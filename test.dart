import 'package:flutter/material.dart';
void main() {
  runApp(const myapp());
}
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int _value = 0;
  String? title;
  Widget _buildtext(){

    return Text('giá trị: $_value',
    style: const TextStyle(fontSize: 20),
    );

  }



  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.person),
          title:  Text(title ?? 'ali 33'),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildtext(),
              OutlinedButton(onPressed: (){
                _value++;
                title = _value.toString();
                setState(() {});
              },
                  child: const Text('tính toán')
              )
            ],
          ),
        )
      )
    );
  }
}
// const: hằng ko thể thay đổi, chỉ duy nhất
//title ?? 'ali 22': nếu title = nolll thfi hiện cái trong ''