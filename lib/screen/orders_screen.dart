import 'package:Vendor/card/orders_card.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Text(
                'Available Orders',
                style: TextStyle(
                    color: Colors.deepOrange[400],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 30),
              child: Divider(),
            ),
          ])),
          SliverGrid(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.deepOrange[400],
                          ),
                          hintText: 'Search',
                          hintStyle: new TextStyle(color: Colors.deepOrange)),
                    )
                  ],
                ),
              );
            }, childCount: 2),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 300,
                child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                  return OrdersCard();
                })),
          )
        ],
      ),
    );
  }
}
