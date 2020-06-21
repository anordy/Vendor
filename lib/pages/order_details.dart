import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 300),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(
                Icons.arrow_back_ios,
                color: Colors.deepOrange,
                size: 20,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.access_time,
                    size: 20,
                    color: Colors.deepOrange,
                  ),
                  Text(
                    '12:30',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  RaisedButton(
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
                                height: 160,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Money sent',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(height: 8,),
                                    Text('Tzs 900,000 is successfuly transfered fromyour tafu wallet to your Bank Account',style: TextStyle(color: Colors.white70),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        color: Colors.deepOrange,
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          'OK!',
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
                      'confirm',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                    shape: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: new BorderSide(color: Colors.deepOrange)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'You Have 30 Minutes to complete the availability of good',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Order Details',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            '#2343',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Item Name',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            'Samsung TV',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Price',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            'Tzs 300,000',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'size',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            '42 inchs',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Color',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          Text(
                            'black',
                            style: TextStyle(color: Colors.grey[700]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
