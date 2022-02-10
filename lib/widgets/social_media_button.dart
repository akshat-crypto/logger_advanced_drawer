import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // SizedBox(width: 50),
          InkWell(
            onTap: () {},
            child: Icon(FontAwesomeIcons.facebook, color: Colors.blue.shade900),
          ),
          InkWell(
            onTap: () {},
            child: Icon(FontAwesomeIcons.twitter, color: Colors.lightBlue),
          ),
          InkWell(
            onTap: () {},
            child:
                Icon(FontAwesomeIcons.instagram, color: Colors.pink.shade400),
          ),
          InkWell(
            onTap: () {},
            child: Icon(FontAwesomeIcons.linkedin, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
