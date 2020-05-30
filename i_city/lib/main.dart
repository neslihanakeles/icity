import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login_screen.dart';
void main() {
  runApp(MaterialApp(
    title: 'iCity', // used by the OS task switcher
    home: MyScaffold(),
  ));
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: title,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Scaffold(
      body: Center( // Column is a vertical, linear layout.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80.0,),
            Image.asset("dosyalar/images/logo.jpeg",),
            Text(
              'iCity',
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.indigo[500],
                fontWeight: FontWeight.bold,
                fontSize: 96,
              ),
            ),
            SizedBox(height: 15.0,),
            Text(
              'En yakınındakileri keşfet!',
              style: TextStyle(
                letterSpacing: 3,
                color: Colors.indigo[500],
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 100.0,),
            RaisedButton(
              child: Text("Şehrini Keşfet",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),),
              padding: EdgeInsets.only(
                  top: 10, left: 60, bottom: 10, right: 60),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),);
              },
              color: Colors.indigo[500],)
          ],
        ),
      ),
    );
  }

}
