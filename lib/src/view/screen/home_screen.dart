import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:login_energasia/src/view/screen/fourth_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomeScreen> {

  int _selectedDropDownValue =  1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[300] ,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            leading: const Icon(Icons.menu,),
            actions: [
              Container(
                padding: EdgeInsets.all(1.5),
                width: 35,
                height: 35,
                child: Image.asset(
                    'images/vish.png'
                ),
              ),
            ],
          ),

          body: SingleChildScrollView(
            child: Column(
              children: [
                //filter && sort
                SizedBox(
                  height:60,
                  width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height:40, //height of button
                        width:170,
                        child: ElevatedButton.icon(
                          onPressed: () { },
                          icon: const Icon(Icons.filter_alt_outlined, color: Colors.black,),
                          label: const Text("Filter", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),), //label text
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white //elevated background color
                          ),
                        ),
                      ),
                      SizedBox(
                        height:40, //height of button
                        width:170,
                        child: ElevatedButton.icon(
                          onPressed: () { },
                          icon: const Icon(Icons.sort, color: Colors.black,),
                          label: const Text("Sort", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),), //label text
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white //elevated btton background color
                          ),
                        ),
                      )
                    ],
                  ),
                ),



                Container(
                  color: Colors.white,
                  height:60,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      Text(" New complaints"),
                      Text("Result per page"),
                      DropdownButton<int>(
                        value: _selectedDropDownValue,
                        items: <int>[1,2,3,4,].map((int value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text(value.toString()),
                          );
                        }).toList(),
                        onChanged:  ( newVal) {
                          _selectedDropDownValue = newVal!;
                          setState(() {

                          });
                        },
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height:30,
                  width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height:20, //height of button
                        width:100,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios, color: Colors.black,size: 17,),
                          label: const Text("Back", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),), //label text
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white //elevated background color
                          ),
                        ),
                      ),
                      SizedBox(
                        height:20, //height of button
                        width:100,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const FourthScreen()),
                            );
                          },
                          label: const Text("Next", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),), //label text
                          icon: const Icon(Icons.arrow_forward_ios_sharp, color: Colors.black,size: 17,),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white //elevated button background color
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                ListView.builder(shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (context, position) {
                  return (
                      Column(
                        children: [
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 3),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: const <Widget>[
                                  Text("Carbon deposit/"),
                                  Text("LSWA12193",
                                      style: TextStyle(fontWeight: FontWeight.bold))
                                ]),
                                SizedBox(
                                  height: 20, //height of button
                                  width: 90,
                                  child: ElevatedButton(
                                    child: const Text('Resolve',
                                        style: TextStyle(color: Colors.green)),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => const FourthScreen()),
                                      // );
                                      //Navigator.of(context).pushNamed('/dashboard');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      side: const BorderSide(
                                          width: 2,
                                          color: Colors.green), //border width and color
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                  width: 15,
                                  child: Icon(Icons.arrow_forward_ios,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            width: double.infinity,
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Complaint Date"),
                                Text("05/06/2021",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Complaint Origin"),
                                Text("Barua Bahuara",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            width: double.infinity,
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Ward No./Area"),
                                Text("08/Rajapakar",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Complainer Name"),
                                Text("Vishesh Kumar",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 3),
                            padding: EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Status"),
                                Text("Pending",
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      )
                  );
                }, ),
              ],
            ),
          )
      ),
    );
  }
}
