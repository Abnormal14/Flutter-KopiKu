import 'package:flutter/material.dart';

class CardBanner extends StatelessWidget {
  const CardBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.asset(
            'assets/images/banner.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
