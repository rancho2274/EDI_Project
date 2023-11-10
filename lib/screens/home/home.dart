import 'package:csi_assign5/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:csi_assign5/services/auth.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final Authservice _auth = Authservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                  child: Text(
                    'ePark',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                TextButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Logout'),
                  onPressed: () async{
                    await _auth.signOut();

                  },
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: 185,
                color: Colors.blue,
                // height: 50,
                child: Text(
                  'Where Do you Want to visit?',


                ),
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                    onPressed: () {


                    },
                    icon: Image.asset('assets/mall1.webp'),
                  iconSize: 160,
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
