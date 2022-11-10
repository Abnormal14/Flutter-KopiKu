import 'package:flutter/material.dart';
import '../components/card-banner.dart';
import '../components/card-category.dart';
import '../components/card-product.dart';

class Home extends StatelessWidget {
  final String images = "assets/images/cover_coffee.jpg";
  final String description =
      "Made with selected espresso coffee and processed with high technique and full of love";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(32),
        alignment: Alignment.topCenter,
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Expanded(
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
                        ))),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: SizedBox(
                    width: 60,
                    height: 48,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.brown),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide.none))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Home()));
                      },
                      child: Icon(Icons.notifications_active),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 32, bottom: 16),
              child: CardBanner(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.circle,
                  color: Colors.brown,
                  size: 20,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey[300],
                  size: 15,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey[300],
                  size: 15,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey[300],
                  size: 15,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CardCategory(
                      image: 'assets/images/coffee.png', title: 'Coffee'),
                  CardCategory(
                      image: 'assets/images/drink.png', title: 'Juice'),
                  CardCategory(image: 'assets/images/eat.png', title: 'Eatery'),
                  CardCategory(
                      image: 'assets/images/dessert.png', title: 'Dessert'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
                  CardProduct(
                    image: images,
                    title: 'Medium Roasting Americano',
                    description: description,
                    price: 'Rp. 35.000',
                    like: '201',
                    soldout: '1480',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CardProduct(
                    image: images,
                    title: 'Medium Roasting Americano',
                    description: description,
                    price: 'Rp. 35.000',
                    like: '201',
                    soldout: '1480',
                  ),
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
            ])
          ],
        ),
      ),
    ))));
  }
}
