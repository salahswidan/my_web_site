import 'package:flutter/material.dart';
import 'package:my_web_site/widget/border_flat_botton.dart';

class CustomAppBar extends StatelessWidget {
  Widget _appBarBotton(String title, VoidCallback onTap) {
    return TextButton(
      child: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onPressed: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/logo.png',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _appBarBotton('About', () {}),
              _appBarBotton('Portfolie', () {}),
              _appBarBotton('Centact', () {}),
              BorderFlatButton(
                  title: 'Get Started', onTap: () {}, width: 150, height: 40),
            ],
          )
        ],
      ),
    );
  }
}
