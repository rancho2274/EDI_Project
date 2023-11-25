import 'package:flutter/material.dart';
import 'package:csi_assign5/services/auth.dart';
class Register extends StatefulWidget {
  final Function toggleView;
  const Register({super.key, required this.toggleView});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Authservice _auth= Authservice();
  final _formKey= GlobalKey<FormState>();
  String email='';
  String password='';
  String error='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Text('Sign up the app'),
        centerTitle: true,
        // actions: <Widget>[
        //   TextButton.icon(
        //     onPressed: () {
        //       widget.toggleView();
        //       },
        //     icon: Icon(Icons.person),
        //     label: Text('Sign in'),
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your Mail id here',
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 1)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 1)
                        )
                    ),
                    validator: (val)=> val!.isEmpty ? 'Enter an Email': null,
                    onChanged: (val){
                      setState(()=> {
                        email =val
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Set your password',
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1)
                      ),
                        focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1)
                  )
                    ),
                    validator: (val)=> val!.length<6 ? 'Enter a password 6+ chars long': null,
                    obscureText: true,
                    onChanged: (val){
                      setState(()=>{
                        password= val

                      });
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async{
                      if(_formKey.currentState!.validate()){

                        dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                      if (result == null){
                        setState(() =>{error='please supply a valid email'

                           });
                      }
                      }
                    },
                    child: Text(
                        'Register'
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.black)),
                  ),

                  Container(
                    child: Text(
                      'Already Registered?',
                      style: TextStyle(),
                    ) ,


                  ),
                  TextButton.icon(
                    onPressed: () {
                      widget.toggleView();
                    },
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,),
                    label: Text(
                      'Sign IN',
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),

                  ),
                  SizedBox(height: 12),
                  Text(
                    error,
                  style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ],
              ),
            )
        ),
      ),

    );
  }
}
