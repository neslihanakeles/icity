import 'package:flutter/material.dart';
import 'package:icity/home_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
String email;
String kAdi;
String password;
String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 50.0,),
            Image.asset("dosyalar/images/logo.jpeg",  ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 16.0),
              child: Divider(color: Colors.indigo[500],),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email,color: Colors.indigo[500],),
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigo[500],
                    )
                  ),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  setState(() {
                    email = value;
                  });
                },
              )
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.indigo[500],),
                    labelText: 'Kullanıcı Adı',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value){
                    setState(() {
                      kAdi = value;
                    });
                  },
                )
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone,color: Colors.indigo[500],),
                    labelText: 'Telefon',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value){
                    setState(() {
                      phoneNumber = value;
                    });
                  },
                )
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.indigo[500],),
                    labelText: 'Şifre',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigo[500],
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value){
                    setState(() {
                      password = value;
                    });
                  },
                )
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: RaisedButton(
                child: Text('Kayıt Ol',
                style: TextStyle(color: Colors.white),),
                color: Colors.indigo[500],
                onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()),);},),
              ),
          ],
        )
      )
    );

  }














}