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
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign up the app'),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              widget.toggleView();
              },
            icon: Icon(Icons.person),
            label: Text('Sign in'),
          ),
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter you mail id here',
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 2)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2)
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
                    hintText: 'Enter your password',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)
                    ),
                      focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2)
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

    );
  }
}
