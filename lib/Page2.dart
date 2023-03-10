import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 126, 185, 234),
        child: Center(child: Text('Yes..U Finally did it...',style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold ,),)),
      ),
    );
  }
}
