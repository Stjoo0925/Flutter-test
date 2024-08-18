import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('연락처'),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              border: Border.all(color: Colors.black),
              boxShadow: [
                BoxShadow(
                  color: Colors.black, // 그림자의 색상
                  offset: Offset(2, 2), // 그림자의 위치 (x, y)
                  blurRadius: 4.0, // 블러 효과의 반경
                  spreadRadius: 1.0, // 그림자가 퍼지는 정도
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.comment),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
