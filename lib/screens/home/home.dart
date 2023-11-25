import 'package:csi_assign5/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:csi_assign5/services/auth.dart';
import 'package:csi_assign5/screens/slotbooking/sb.dart';

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
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  TextButton.icon(

                    icon: Icon(
                        Icons.person,
                    color: Colors.black,),
                    label: Text(
                        'Logout',
                    style: TextStyle(color: Colors.black
                        ),),
                    onPressed: () async{
                      await _auth.signOut();

                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Text(
                      'ePark',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 50,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                      // style:TextStyle(
                      //   fontFamily: 'source sans',
                      //   fontSize: 50,
                      //   color: Colors.black,
                      //   fontWeight: FontWeight.bold,
                      //   // letterSpacing: 2.0,
                      //
                      // ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Container(
                  width: 300,
                  // color: Colors.blue,
                  // height: 50,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Where would you like to visit?',
                      style:TextStyle(
                        fontFamily: 'source sans',
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        // letterSpacing: 2.0,

                      ),


                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(140, 80, 80, 40),
                    child: Transform.scale(
                      scale: 6,
                      child: IconButton(
                        style: ButtonStyle(

                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const slotbooking()));
                        },


                        icon: Image.asset('assets/mall1.webp'),

                      ),
                    ),
                  ),


                  // IconButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => const slotbooking()));
                  //   },
                  //
                  //   icon: Image.asset('assets/hospital.jpg'),
                  // ),
                ],
              ),
              Row(
                children: <Widget>[
                 Padding(
                  padding: const EdgeInsets.fromLTRB(140, 80, 80, 40),
                  child: Transform.scale(
                    scale: 6,
                    child: IconButton(
                      style: ButtonStyle(

                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const slotbooking()));
                      },


                      icon: Image.asset('assets/hospital.jpg'),

                    ),
                  ),
                ),
    ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(140, 80, 80, 40),
                    child: Transform.scale(
                      scale: 6,
                      child: IconButton(
                        style: ButtonStyle(

                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const slotbooking()));
                        },

                        icon: Image.asset('assets/restaurant.jpg'),

                      ),
                    ),
                  ),


                  // IconButton(
                  //   onPressed: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(builder: (context) => const slotbooking()));
                  //   },
                  //
                  //   icon: Image.asset('assets/hospital.jpg'),
                  // ),
                ],
              ),

                Row(
                  children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(140, 80, 80, 40),
                    child: Transform.scale(
                      scale: 6,
                      child: IconButton(
                        style: ButtonStyle(

                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const slotbooking()));
                        },


                        icon: Image.asset('assets/cinema.jpg'),

                      ),
                    ),
                  ),
    ],
                ),




            ],
          ),
        ),
      ),
    );
  }
}
