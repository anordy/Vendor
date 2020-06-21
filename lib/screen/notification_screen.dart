import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
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
                'Notifications',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'May 05',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Today',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                    
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'May 04',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Yesterday',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey,
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.grey,
                  ),
                  Text(
                    'order dispatched',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '12:40',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
