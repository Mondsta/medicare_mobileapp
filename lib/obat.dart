import 'package:flutter/material.dart';
import 'package:medicare_application/cart.dart';
import 'productdetail.dart';

class ObatPage extends StatefulWidget {
  @override
  _ObatPageState createState() => _ObatPageState();
}

class _ObatPageState extends State<ObatPage> {
  final List<Map<String, dynamic>> products = [
    {'name': 'Obat 1', 'price': 10000, 'image': 'assets/obat.png'},
    {'name': 'Obat 2', 'price': 15000, 'image': 'assets/obat.png'},
    {'name': 'Obat 3', 'price': 20000, 'image': 'assets/obat.png'},
    {'name': 'Obat 4', 'price': 25000, 'image': 'assets/obat.png'},
    {'name': 'Obat 5', 'price': 30000, 'image': 'assets/obat.png'},
    {'name': 'Obat 6', 'price': 35000, 'image': 'assets/obat.png'},
  ];

  bool isHorizontalView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.swap_horiz),
            onPressed: () {
              setState(() {
                isHorizontalView = !isHorizontalView;
              });
            },
          ),
        ],
      ),
      body: isHorizontalView
          ? buildHorizontalProductList()
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return buildProductCard(context, products[index]);
              },
            ),
    );
  }

  Widget buildHorizontalProductList() {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return buildProductCard(context, products[index]);
      },
    );
  }

  Widget buildProductCard(BuildContext context, Map<String, dynamic> product) {
    return Card(
      elevation: 3,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductDetailPage(product)),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              product['image'],
              width: 100,
              height: 100,
            ),
            SizedBox(height: 8),
            Text(
              product['name'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Price: Rp ${product['price']}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
