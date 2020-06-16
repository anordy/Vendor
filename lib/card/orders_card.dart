import 'package:flutter/material.dart';

class OrdersCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            Image.asset('assets/images/1.jpg'),
            Text('data')
          ],
        ),
    );
  }
}