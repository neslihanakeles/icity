import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(home: HomeScreen2()));

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreen2 createState() => _HomeScreen2();
}

Widget _buildPp() {
  return Center(
    child: Container(
      width: 110.0,
      height: 110.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(''),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(80.0),
        border: Border.all(
          color: Colors.indigo,
          width: 1.0,
        ),
      ),

    ),

  );
}

class _HomeScreen2 extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
        SizedBox(
        height: 50,
      ),

      Padding(
      padding: EdgeInsets.only(left: 25, right: 20,),

        child: Column(
         children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          _buildPp(),

          SizedBox(height: 60,),
        ],
        ),
        ],
    ),
      ),
        ],
        ),
        bottomNavigationBar: BottomNavigationBar(
        items:[
         BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.black),
          title: Text(''),
          backgroundColor: Colors.white70),
          BottomNavigationBarItem(
          icon: Icon(Icons.near_me, color: Colors.black),
          title: Text(''),
          backgroundColor: Colors.white70),
          BottomNavigationBarItem(
          icon: Icon(Icons.star, color: Colors.black),
          title: Text(''),
          backgroundColor: Colors.white70),
          BottomNavigationBarItem(
          icon: Icon(Icons.notifications, color: Colors.black),
          title: Text(''),
          backgroundColor: Colors.white70)
        ]
        ),
    );

  }
}