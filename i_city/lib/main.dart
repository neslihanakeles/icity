import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login_screen.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[


          // Expanded expands its child to fill the available space.
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
    return Material(
      // Column is a vertical, linear layout.
      child: Column(

        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget> [
              Image.asset("dosyalar/images/logo.jpeg",  ),
              ],

            ),
          ),
          Expanded(
            child: Center(
                child: Text(
                    'iCity',
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 96,
                    ),
                ),
              ),
            ),
          Expanded(
            child: Center(
              child: Text(
                  'En yakınındakileri keşfet!',
                  style: TextStyle(
                    letterSpacing: 3,
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget> [
                RaisedButton(
                  child: Text("Şehrini Keşfet",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16),),
                    disabledColor:Colors.indigo[900],
                  padding: EdgeInsets.only(top: 10, left: 60, bottom: 10, right: 60),
                    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);},)

],
                ),

            ),

        ],

      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}

