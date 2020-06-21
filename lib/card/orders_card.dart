import 'package:Vendor/model/products_model.dart';
import 'package:Vendor/pages/order_details.dart';
import 'package:flutter/material.dart';

class OrdersCard extends StatelessWidget {
  final Product products;

  const OrdersCard({Key key,@required this.products}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 65,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(products.title,style: TextStyle(color: Colors.deepOrange,fontSize: 18),),
              Text(products.subtitle,style: TextStyle(color: Colors.grey),)
            ],
          ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(products.quantity,style: TextStyle(color: Colors.deepOrange,fontSize: 15),),
                RaisedButton(
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => OrderDetailsPage()));
                  },
                  child: Text('Select',style: TextStyle(fontSize: 15),),
                  shape: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10)
                    ),
                    borderSide: BorderSide.none
                  ),
                  
                  )
              ],
          ),
            )
        ],
      ),
    );
  }
}
