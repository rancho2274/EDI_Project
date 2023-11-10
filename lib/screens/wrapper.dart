import 'package:csi_assign5/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:csi_assign5/screens/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:csi_assign5/screens/home/home.dart';
class wrapper extends StatelessWidget {
  const wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user= Provider.of<CustomUser?>(context);
    print(user);
    if(user == null){
      return authenticate();
    }
    else{
      return home();
    }

  }
}
