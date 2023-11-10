import 'package:csi_assign5/services/auth.dart';
import 'package:csi_assign5/screens/models/user.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  final Function toggleView;
  const SignIn({super.key, required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

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
        title: Text('Sign in to the app'),
        actions: <Widget>[
          TextButton.icon(
              onPressed: () {

                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('Register'),
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
                  validator: (val)=> val!.isEmpty ? 'Enter an Email': null,
                  onChanged: (val){
                    setState(()=> {
                      email =val
                    });
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
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

                      dynamic result = await _auth.SignInWithEmailAndPassword(email, password);
                      if (result == null){
                        setState(() =>{error='please check you credentials'

                        });
                      }
                    }

                  },
                  child: Text(
                      'Sign in'
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
