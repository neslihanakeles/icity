import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ProfileScreen()));

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}
class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Profilim",
        debugShowCheckedModeBanner: false,
        home: UserProfilePage(),);}}


class UserProfilePage extends StatelessWidget {
  final String _fullName = "İsim Soyisim";
  final String _status = "Software Developer";
  final String _bio =
      "\"Hi\"";
  final String _followers = "0";
  final String _followed = "0";

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 2.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(''),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
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

  Widget _buildFullName() {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 13.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 8.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer() {
    return Container(
      height: 30.0,
      margin: EdgeInsets.only(top: 2.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Takipçi", _followers),
          _buildStatItem("Takip Edilen", _followed),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400,//try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(0.0),
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }
  Widget _buildButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => print("followed"),
              child: Container(
                height: 20.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Gönderiler",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            child: InkWell(
              onTap: () => print(""),
              child: Container(
                height: 20.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "Etkinlikler",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => print(""),
              child: Container(
                height: 20.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Beğeniler",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.2,
      height: 2.0,
      color: Colors.indigo,
      margin: EdgeInsets.only(top: 4.0),
    );
  }


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(

      body: Stack(
        children: <Widget>[
          _buildCoverImage(screenSize),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 10.0),
                  _buildProfileImage(),
                  _buildFullName(),
                  _buildStatus(context),
                  _buildBio(context),
                  _buildStatContainer(),
                  _buildButtons(),
                  _buildSeparator(screenSize),
                ],
              ),
            ),
          ),
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