import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FazleCard()));
}

class FazleCard extends StatefulWidget {
  const FazleCard({Key key}) : super(key: key);

  @override
  _FazleCardState createState() => _FazleCardState();
}

class _FazleCardState extends State<FazleCard> {
  int fazleLevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          title: Text(
            'Fm_Card',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              fazleLevel ++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20, 15.0, 0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/fazle.png'),
                    radius: 60.0,
                  ),
                ),
                Divider(
                  height: 70.0,
                  color: Colors.white,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Fazle Rabbee',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Current level',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '$fazleLevel',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'fazlerabbrr67@gmail.com',
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.0,
                          fontSize: 20),
                    )
                  ],
                )
              ]),
        ));
  }
}
