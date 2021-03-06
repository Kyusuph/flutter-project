import 'package:flutter/material.dart';

import './product_create.dart';
import './product_list.dart';

class ProductAdminPage extends StatelessWidget {
  final bool mode;
  final Function setMode;

  ProductAdminPage({this.mode, this.setMode});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('Product list'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Create Product',
                icon: Icon(Icons.create),
              ),
              Tab(
                text: 'Product List',
                icon: Icon(Icons.list),
              ),
            ],
          ),
          title: Text('Manage products'),
          actions: [
            IconButton(
              icon: Icon(Icons.wb_sunny),
              onPressed: () {
                setMode(mode);
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [ProductCreatePage(), ProductListPage()],
        ),
      ),
    );
  }
}
