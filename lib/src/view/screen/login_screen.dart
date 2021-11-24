import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_energasia/src/view/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Validation Form'),
        // ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[200],
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/eng.jpeg'),
                fit: BoxFit.cover
            ),
          ),
          padding: EdgeInsets.only(top: 300.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 600,
                      padding: EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Enter Email',
                            labelText: 'Email',
                            labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.0)
                                )
                            )
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      width: 600,
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon:  Icon(Icons.lock),
                            hintText: 'Enter Password',
                            labelText: 'Password',
                            labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                            filled: true,
                            fillColor: Colors.white,enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            )
                        ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0)
                                )
                            )

                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    FlatButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forgot Password',
                            style: TextStyle(color: Colors.white,fontSize: 15),)
                        ],
                      ),
                    ),

                    Container(
                      width: 450,
                      padding: EdgeInsets.all(5),
                      child: RaisedButton(
                        child: const Text('LOGIN'),
                        color: Colors.lightBlueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),

                        onPressed: (){

                          if(_formKey.currentState!.validate()){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomeScreen()),
                            );
                            Scaffold.of(context)
                                .showSnackBar(const SnackBar(content: Text('Data is in processing.')));
                          }

                        },
                      ),
                    )
                  ]),
            ),
          )
      ),

    );
  }
}