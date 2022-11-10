import 'package:flutter/material.dart';
import '../components/card-product.dart';

class Cart extends StatelessWidget {
  final String images = "assets/images/cover_coffee.jpg";
  final String description =
      "Made with selected espresso coffee and processed with high technique and full of love";

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        hintText: 'Search product here ...',
                        hintStyle:
                            TextStyle(fontSize: 16, color: Colors.grey[500]),
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.zero,
                      )),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CardProduct(
                            image: images,
                            title: 'Hot Espresso',
                            description: description,
                            price: 'Rp. 30.000',
                            like: '34',
                            soldout: '141',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[],
                      ),
                    ])
              ],
            ),
          ),
        ),
      );
}
