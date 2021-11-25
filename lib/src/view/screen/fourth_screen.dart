import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Resolved....!!!!',
                style: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: Text("Pop Button")),
            )

          ],
        ),

      ),
    );
  }
}
