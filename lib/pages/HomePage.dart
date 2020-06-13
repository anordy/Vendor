
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
  
   List<Widget> _widgetOptions = <Widget> [
   OrderScreen(),
   DispatchScreen(),
   NotificationScreen(),
   AccountScreen()
   
  ];

  void _onItemTapped(int index) {
    setState(() {
       _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
           child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar( 
        backgroundColor: Colors.deepOrange[400],
        items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.folder),
              title: Text('Orders')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_download),
              title: Text('Dispatch')
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text('Notifications')
              ),
               BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              title: Text('Account')
              ),
             
              
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
         ),
   
    );
  }
}