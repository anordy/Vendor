import 'package:Vendor/pages/edit_page.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Laptop City',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sinza Mori',
              style: TextStyle(fontSize: 20, color: Colors.grey[700]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => EditPage()));
              },
              child: Text(
                'View',
                style: TextStyle(color: Colors.white),
              ),
              shape: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: new BorderSide(color: Colors.deepOrange)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(),
          ),
          ListTile(
            title: Text(
              'Wallet',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.wallpaper),
          ),
          ListTile(
            title: Text(
              'Change Password',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.lock),
          ),
          ListTile(
            title: Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 10,
            ),
          ),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            trailing: CircleAvatar(
              radius: 10,
            ),
          )
        ],
      )),
    );
  }
}
