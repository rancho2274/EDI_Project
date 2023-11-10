import 'package:csi_assign5/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:csi_assign5/screens/authenticate/register.dart';

class authenticate extends StatefulWidget {
  const authenticate({super.key});



  @override
  State<authenticate> createState() => _authenticateState();
}

class _authenticateState extends State<authenticate> {

  bool showSignIn=true;
  void toggleView(){
    setState(() =>{
      showSignIn= !showSignIn
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggleView: toggleView);
    }
    else{
      return Register(toggleView: toggleView);
    }
  }
}
