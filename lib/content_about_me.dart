import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_web_site/widget/border_flat_botton.dart';

class ContentAboutMe extends StatelessWidget {
  Widget _iconContact(IconData iconData, VoidCallback onTap) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 54.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello , I am',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            'Salah\nSwidan',
            style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          Row(
            children: [
              Text(
                'a young ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                'Flutter',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 20,
                ),
              ),
              Text(
                ' dev for Android && Ios Mobils ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'Find Me On ',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              _iconContact(FontAwesomeIcons.facebookF, () {}),
              _iconContact(FontAwesomeIcons.twitter, () {}),
              _iconContact(FontAwesomeIcons.instagram, () {}),
              _iconContact(FontAwesomeIcons.youtube, () {}),
              _iconContact(FontAwesomeIcons.pinterest, () {}),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              BorderFlatButton(
                title: 'Hire Me',
                onTap: () {},
                width: 150,
                height: 40,
                color: Colors.deepOrange,
              ),
              SizedBox(width: 20,),
               BorderFlatButton(
                title: 'Hire Me',
                onTap: () {},
                width: 150,
                height: 40,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
