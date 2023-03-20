import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/util/shop_grid.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Shop',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.shop),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ],
          ),
        ),
      ),
      body: ShopGrid(),
    );
  }
}
