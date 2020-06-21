import 'package:Vendor/model/products_model.dart';
import 'package:flutter/material.dart';

class DispatchCard extends StatelessWidget {
  final Product products;

  const DispatchCard({Key key,@required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
              height: 50,
              width: 70,
              child: Icon(
                Icons.access_time,
                size: 50,
                color: Colors.deepOrange,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  products.time,
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                Text(
                  products.title,
                  style: TextStyle(color: Colors.deepOrange, fontSize: 16),
                )
              ],
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,top: 10, bottom: 10),
              child: Text(
                'confirm',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
            color: Colors.white,
            shape: new OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.deepOrange)),
          )
        ],
      ),
    );
  }
}
