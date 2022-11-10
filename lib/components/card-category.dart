import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String image;
  final String title;

  const CardCategory({
    required this.image,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black12,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 16, bottom: 16, left: 32, right: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  this.image,
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    this.title,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
