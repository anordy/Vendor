import 'package:Vendor/card/orders_card.dart';
import 'package:Vendor/model/products_model.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: new TextStyle(color: Colors.deepOrange),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.deepOrange,
                          ),
                          border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10)))),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.deepOrange,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Awaiting',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  shape: new OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                      borderSide: BorderSide.none),
                )
              ],
            ),
          )
        ])),
        SliverToBoxAdapter(
          child: Container(
              height: 450,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return OrdersCard(
                    products: products[index],
                  );
                },
                itemCount: 4,
              )),
        )
      ],
    );
  }
}
