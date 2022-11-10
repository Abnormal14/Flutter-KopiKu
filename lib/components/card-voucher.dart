import 'package:flutter/material.dart';

class CardVoucher extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;
  final String like;

  double screenWidth = 0;
  double percentageCardWidth = 0.40;

  final TextStyle fontStyle = TextStyle(fontFamily: 'roboto', fontSize: 16);

  CardVoucher({
    this.image = "",
    this.title = "",
    this.description = "",
    this.price = "",
    this.like = "",
  });
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 8, left: 2, right: 2, bottom: 8),
          width: screenWidth * percentageCardWidth,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(1, 1),
                    blurRadius: 6)
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // card information
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: screenWidth * percentageCardWidth,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(this.image), fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      this.title,
                      style: fontStyle.copyWith(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.favorite,
                              size: 15, color: Colors.grey[400]),
                          Container(
                            margin: EdgeInsets.only(left: 4, right: 8),
                            child: Text(
                              like,
                              style: fontStyle.copyWith(
                                  color: Colors.grey[350], fontSize: 12),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: 8, right: 8, bottom: 8, top: 16),
                    child: Text(
                      price,
                      style: fontStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown[800]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Text(
                      description,
                      style: fontStyle.copyWith(
                          color: Colors.grey[350], fontSize: 14),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.brown),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    side: BorderSide.none))),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) => Login()));
                    },
                    child: Text(
                      'Use',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
