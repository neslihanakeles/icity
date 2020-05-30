import 'package:flutter/material.dart';
import 'griddashboard.dart';
void main() => runApp(MaterialApp(home: HomeScreen()));

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
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
class _HomeScreen extends State<HomeScreen> {
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

                    SizedBox(
                      height: 60,
                    ),
//                    IconButton(
//                      alignment: Alignment.topLeft,
//                      icon: Image.asset(
//                        "dosyalar/images/notification.png",
//                        width: 18,
//                      ),
//                      onPressed: () {},
//                    ),
                    Text(
                       "Şehri keşfetmeye başla",
                      style: (TextStyle(
                              color: Colors.indigo[900],
                              fontSize: 15,
                              fontWeight: FontWeight.normal)),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          GridDashboard()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              title: Text(''),
              backgroundColor: Colors.white70
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.near_me, color: Colors.black),
              title: Text(''),
              backgroundColor: Colors.white70
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.star, color: Colors.black),
              title: Text(''),
              backgroundColor: Colors.white70
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.black),
              title: Text(''),
              backgroundColor: Colors.white70
          )
        ]
      ),

    );
  }
}
