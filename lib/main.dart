import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MyApp2();
  }
}

class MyApp2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp2>{

  int _currentState = 0;
  String _text= "Welcome Hero";
  final mycontrol = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("HeyCode Pay"),
            backgroundColor: Colors.red,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: Text('HeyCode Inc.',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  trailing: Icon(Icons.home),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Profile'),
                  trailing: Icon(Icons.verified_user),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Settings'),
                  trailing: Icon(Icons.settings),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Rate Us'),
                  trailing: Icon(Icons.rate_review),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){
              setState(() {
                _currentState = index;
                switch (index){
                  case 0:
                    _text = "HOME";
                    break;
                  case 1:
                    _text = "SCHOOL";
                    break;
                  case 2:
                    _text = "TIME TABLE";
                    break;
                  case 3:
                    _text = "SETTINGS";
                    break;
                  default:
                    _text = "HOME";
                }
              });
            },
            currentIndex: _currentState,
            backgroundColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("HOME"),
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  title: Text("SCHOOL"),
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.schedule),
                  title: Text("TIME TABLE"),
                backgroundColor: Colors.deepOrange,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text("SETTINGS"),
                backgroundColor: Colors.purple,
              ),
            ],
          ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Column(
              children: <Widget>[
                TextField(
                  controller: mycontrol,
                  decoration: InputDecoration(
                    labelText: "Enter Value",
                    border: OutlineInputBorder(),
                  ),
                ),
                RaisedButton(
                  textColor: Colors.red,
                  child: Text(content),
                  onPressed: (){
                    setState(() {
                      content = mycontrol.text.trim();

                    });
                  },
                ),
                Text(
                  Textvalue,
                ),
              ],
            )
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );

  }
  String content = "Initial";
}