import 'package:flutter/material.dart';
import './main.dart';
import './questions.dart';
class Result extends StatefulWidget {
  const Result ({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var marks;
  @override
  Widget build(BuildContext context) {


    return Column(

      children: [
        if(marks>120)...[
          const Center(
              child: Text('we are perfect',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 35,
                ),
              )
          )
        ]
        else if(marks<120 && marks>100)...[
          const Center(
              child:
              Text('we can work toget',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 35,
                ),
              )
          )
        ]
        else...[
            const Center(
                child:
                Text('no',
                  textAlign:TextAlign.center,

                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 35,
                  ),
                )
            ),


          ],
        TextButton(onPressed: (){
          setState((){

          });

        }, child: Text('rstatr'))
      ],
    );
  }
}

