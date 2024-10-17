import 'package:flutter/material.dart';
import 'package:my_web_site/content_about_me.dart';
import 'package:my_web_site/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0E0C38),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: CustomAppBar(),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ContentAboutMe(),
          Image.asset(
            'assets/images/person.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
