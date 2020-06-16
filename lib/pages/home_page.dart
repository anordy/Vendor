import 'package:Vendor/screen/account_screen.dart';
import 'package:Vendor/screen/dispatch_screen.dart';
import 'package:Vendor/screen/notification_screen.dart';
import 'package:Vendor/screen/orders_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index;
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    OrderScreen(),
    DispatchScreen(),
    NotificationScreen(),
    AccountScreen()
  ];
  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(title: Text('vendor')),
      body: SingleChildScrollView(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Orders')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Dispatch')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Notifications')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('Account'))
        ],
        onTap: _onTappedItem,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
