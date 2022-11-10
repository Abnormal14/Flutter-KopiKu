import 'package:flutter/material.dart';
import '../components/card-voucher.dart';

class Voucher extends StatelessWidget {
  final String images = "assets/images/voucher1.png";
  final String images2 = "assets/images/voucher2.png";

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
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
                          CardVoucher(
                            image: images,
                            title: '30% Discount',
                            price: 'Discount Up To Rp. 25.000',
                            like: '34',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CardVoucher(
                            image: images2,
                            title: '40% Discount',
                            price: 'Discount Up To Rp. 40.000',
                            like: '201',
                          ),
                        ],
                      ),
                    ])
              ],
            ),
          ),
        ),
      );
}
