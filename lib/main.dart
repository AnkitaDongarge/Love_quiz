import 'package:anku/quiz.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Quiz();
  }
}



