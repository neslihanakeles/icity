import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
Widget _buildGoToProfileBtn(Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white70,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _goToProfileBtn() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 80.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildGoToProfileBtn(
                () => {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()),)
            },)

        ],


      ),
    );
  }

  Widget _buildTurBtn() {
    return Container(
      padding: EdgeInsets.fromLTRB(110.0, 00.0, 90.0, 10.0),
      width: double.infinity,

      child: RaisedButton(
        elevation: 2.0,
        padding: EdgeInsets.all(50.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
        },
        color: Colors.indigo[900],
        child: Text(
          'Turlar',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
  Widget _buildYemekBtn() {
    return Container(
      padding: EdgeInsets.fromLTRB(130.0, 00.0, 60.0, 10.0),
      width: double.infinity,

      child: RaisedButton(
        elevation: 2.0,
        padding: EdgeInsets.all(50.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);
        },
        color: Colors.indigo[900],
        child: Text(
          'Yemek Kültürü',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _goToProfileBtn(),
          SizedBox(height: 5),
          _buildTurBtn(),
          SizedBox(
            height: 10.0,
          ),
          _buildYemekBtn(),

        ],
      ),
    );
  }
}
