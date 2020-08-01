import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../widgets/products/products_widget.dart';
import '../scoped-model/products.dart';

class ProductsPage extends StatelessWidget {
  Drawer _buildSideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/admin');
            },
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(title: Text('EasyList'), actions: [
      IconButton(
        icon: Icon(Icons.favorite),
        onPressed: () {
          // ...
        },
      ),
      IconButton(
        icon: Icon(Icons.wb_sunny),
        onPressed: () {
          // setMode(mode);
        },
      )
    ]
        // : [
        //   IconButton(
        //     icon: Icon(Icons.wb_sunny),
        //     onPressed: () {
        //       // setMode(mode);
        //     },
        //   )
        // ],
        );
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ProductsModel>(
      builder: (BuildContext context, Widget child, ProductsModel model) {
        return Scaffold(
          drawer: _buildSideDrawer(context),
          appBar: _buildAppBar(),
          body: ProductsWidget(model.products),
        );
      },
    );
  }
}
