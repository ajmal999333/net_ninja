import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}
class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjalevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const
        Text('ninja id card'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        elevation: 1,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body:Padding(
          padding:EdgeInsets.all(30),
        child:  Column(
          children: [
           const CircleAvatar(
              backgroundImage: AssetImage('assets/download.jpg'),
              maxRadius: 76   ,
            ),
          const  Text(
                "NAME",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
          const  SizedBox(height: 15.0),
           const Text(
              "AJMAL P",
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 25.0),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              "$ninjalevel",
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  Text(
                    "ajmal0007@gmail.com",
                    style: TextStyle(
                        color: Colors.yellow,
                      letterSpacing: 2,
                      fontSize: 17,
                    ),

                  ),
                  SizedBox(height: 15.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
