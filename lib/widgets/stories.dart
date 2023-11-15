import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  String profil;
  String story;
  bool storyadd = false;

  Story({required this.profil, required this.story});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 170,
        width: 120,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  profil,
                ),
                fit: BoxFit.cover),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(25)),
        child: Stack(
          children: [
            Positioned(
              left: 7,
              top: 5,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage(story), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100)),
              ),
            )
          ],
        ));
  }
}
