import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vendor'),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
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
                onPressed: () {},
                child: Text(
                  'Edit',
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
                'Physical  Address',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Sinza Mori, Dar es Salaam',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(),
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '+255 765 639 173',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            Text(
              '+255 716 121 689',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(),
            ),
            Text(
              'Email',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'anordypatrick98@gmailcom',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Branches',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                RaisedButton(
                  color: Colors.deepOrange,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            
                            shape: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none
                            ),
                              backgroundColor: Colors.deepOrange,
                              content: Container(
                                height: 300,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Add New Branch',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 48, top: 30, right: 48),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Location',
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
                                          left: 48, top: 30, right: 48),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText: 'Phone Number',
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
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        color: Colors.deepOrange,
                                        onPressed: () {},
                                        child: Text(
                                          'Add',
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
                              ));
                        });
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: new OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: new BorderSide(color: Colors.deepOrange)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.share,
                  color: Colors.deepOrange,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Kariakoo',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.share,
                  color: Colors.deepOrange,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Tabata',
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
