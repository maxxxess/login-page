import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
      height: double.infinity,
        color: Color.fromARGB(255, 240, 123, 123),
        child: Center(child: Text('Sorry..Wrong Answer...',style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold ,),)),
      ),
    );
  }
}