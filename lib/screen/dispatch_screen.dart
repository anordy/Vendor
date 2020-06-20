import 'package:Vendor/card/dispatch_card.dart';
import 'package:Vendor/model/products_model.dart';
import 'package:flutter/material.dart';

class DispatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Awaiting',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: Text(
                      'Confirmation',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      'Dispatch',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.deepOrange,
                  ),
                  hintText: 'Search ...',
                  hintStyle: new TextStyle(color: Colors.deepOrange),
                  border: new OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          )
        ])),
        SliverToBoxAdapter(
          child: Container(
            height: 300,
            child: ListView.builder(itemBuilder: (BuildContext context, int index){
              return DispatchCard(products: products[index],);
            },itemCount: 3,),
          ),
        )
      ],
    );
  }
}
