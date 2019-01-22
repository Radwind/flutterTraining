import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _products.add('Advanced Food Tester');
                        print(_products);
                      });
                    },
                    child: Text('Add Product'),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      setState(() {
                        _products.remove('Advanced Food Tester');
                        print(_products);
                      });
                    },
                    child: Text('Remove Product'),
                  ),
                ),
              ],
            )),
        Products(_products),
      ],
    );
  }
}
