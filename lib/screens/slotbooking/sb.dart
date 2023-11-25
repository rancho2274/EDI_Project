import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class slotbooking extends StatefulWidget {
  const slotbooking({super.key});

  @override
  State<slotbooking> createState() => _slotbookingState();
}

class _slotbookingState extends State<slotbooking> {
  DatabaseReference ref = FirebaseDatabase.instance.ref('sample');
  Future<dynamic> fetch(int slot_num) async {
    // String userId = "your_user_id";
    // Use 'child' to specify the path

    try {
      DatabaseEvent snapshot = await ref.once(); // Await the result of once()

      if (snapshot.snapshot.value != null) {
        dynamic userData = snapshot.snapshot.value;
        int userName = userData?['slot$slot_num'];

        // if (userName != null) {
        print('User Name: $userName');
        // } else {
        //   print('User Name is null');
        // }
      } else {
        // Data not found or null
        print('Data not found');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                        '<Go back',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),),
                  ),
                ),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 30, 30, 40),
                  child: Container(
                    height: 100,
                    width: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.green),
                      ),
                      onPressed: () {},
                      child: Text('Book Slot 1'),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //
                //   },
                //   child: Text(
                //       'Book Slot 2'
                //   ),
                //
                // ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 30, 30, 40),
                  child: Container(
                    height: 100,
                    width: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.grey),
                      ),
                      onPressed: () {},
                      child: Text('Book Slot 2'),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //
                //   },
                //   child: Text(
                //       'Book Slot 2'
                //   ),
                //
                // ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(130, 30, 30, 40),
                  child: Container(
                    height: 100,
                    width: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.green)
                      ),
                      onPressed: () {},
                      child: Text('Book Slot 3'),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //
                //   },
                //   child: Text(
                //       'Book Slot 2'
                //   ),
                //
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
