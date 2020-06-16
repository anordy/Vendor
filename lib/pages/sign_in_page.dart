import 'package:Vendor/pages/home_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[400],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 130,
              ),
              child: Center(
                  child: Text(
                'SIGN IN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    fontFamily: "poppins"),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, top: 30, right: 48),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: new TextStyle(color: Colors.white, fontSize: 15),
                    border: new OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(8.0)),
                        borderSide: new BorderSide())),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, top: 30, right: 48),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: new TextStyle(color: Colors.white, fontSize: 15),
                    border: new OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(8.0)),
                        borderSide: new BorderSide())),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 110),
              child: Row(
                children: <Widget>[
                  Icon(Icons.cloud_upload, color: Colors.blue),
                  SizedBox(width: 10),
                  Text(
                    'Reset Password',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
                  },
                  color: Colors.white,
                  padding:
                      EdgeInsets.only(top: 10, left: 40, right: 40, bottom: 10),
                  child: Text(
                    'Sign in',
                    style:
                        TextStyle(color: Colors.deepOrange[400], fontSize: 25),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
