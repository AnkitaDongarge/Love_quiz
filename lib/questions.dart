import 'package:flutter/material.dart';

class Question{
  String?  QuestionT;
  int Score1=0;
  int Score2=0;
  int Score3=0;
  String?  option1;
  String ?option2;
  String ?option3;
  Question({required String t,required String a,required String b,required String c, required int sa,required int sb,required int sc}){
    QuestionT=t;
    Score1=sa;
    Score2=sb;
    Score3=sc;
    option1=a;
    option2=b;
    option3=c;
  }



}



List<Question>QuestionBank=<Question>[
  Question(t: 'What do you like in me...?', a: 'Attitude', b: 'Personality', c: 'Looks', sa: 30, sb: 40, sc: 20),
  Question(t: 'Do you still love me....?', a: 'Yes', b: 'No', c: 'need to think', sa: 40, sb: 20, sc: 30),
  Question(t: 'Can we meet...?', a: 'Tea', b: 'Coffee', c: 'Cold drinks', sa: 40, sb: 20, sc: 30),
  Question(t: 'lets get in relationship', a: 'Yes', b: 'No', c: 'Depends', sa: 40, sb: 20, sc: 30)
];

