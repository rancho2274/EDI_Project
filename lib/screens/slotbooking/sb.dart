import 'package:flutter/material.dart';

class slotbooking extends StatefulWidget {
  const slotbooking({super.key});

  @override
  State<slotbooking> createState() => _slotbookingState();
}

class _slotbookingState extends State<slotbooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back'),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
                      
                    ),
                      onPressed: () {

                      },
                      child: Text(
                          'Book Slot 1'
                      ),


                  ),
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                      'Book Slot 2'
                  ),

                ),

              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                        'Book Slot 1'
                    ),

                  ),
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text(
                      'Book Slot 2'
                  ),

                ),

              ],
            ),


          ],

        ),
      ),
    );
  }
}
