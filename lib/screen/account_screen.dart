import 'package:Vendor/pages/edit_page.dart';
import 'package:Vendor/pages/wallet_page.dart';
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
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => WalletPage()));
            },
                      child: ListTile(
              title: Text(
                'Wallet',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.wallpaper),
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: new OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      backgroundColor: Colors.deepOrange,
                      content: Container(
                        height: 380,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Change Password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Enter pin sent to your phone no to change your password',
                                style: TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ),

                             Padding(
                                      padding: const EdgeInsets.only(
                                           top: 5,),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Enter Pin',
                                            hintStyle: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                            border: new OutlineInputBorder(
                                                borderRadius: const BorderRadius
                                                        .all(
                                                    const Radius.circular(8.0)),
                                                borderSide: new BorderSide(
                                                    color: Colors.white))),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                           top: 5, ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Enter New Password',
                                            hintStyle: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                            border: new OutlineInputBorder(
                                                borderRadius: const BorderRadius
                                                        .all(
                                                    const Radius.circular(8.0)),
                                                borderSide: new BorderSide(
                                                    color: Colors.white))),
                                      ),
                                    ),
                                     Padding(
                                      padding: const EdgeInsets.only(
                                         top: 5, ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Re-enter New Password',
                                            hintStyle: new TextStyle(
                                                color: Colors.white,
                                                fontSize: 15),
                                            border: new OutlineInputBorder(
                                                borderRadius: const BorderRadius
                                                        .all(
                                                    const Radius.circular(8.0)),
                                                borderSide: new BorderSide(
                                                    color: Colors.white))),
                                      ),
                                    ),
 Padding(
              padding: const EdgeInsets.only(top: 10, left: 50),
              child: Row(
                children: <Widget>[
                  Icon(Icons.cloud_upload, color: Colors.blue),
                  SizedBox(width: 10),
                  Text(
                    'Re-send pin',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        color: Colors.deepOrange,
                                        onPressed: () {},
                                        child: Text(
                                          'Save',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        shape: new OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            borderSide: new BorderSide(
                                                color: Colors.white)),
                                      ),
                                    )
                                   
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: ListTile(
              title: Text(
                'Change Password',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.lock),
            ),
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
