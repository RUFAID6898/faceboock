import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Online extends StatelessWidget {
  String profile;

  Online({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  profile,
                ),
                fit: BoxFit.cover),
            color: Colors.black,
            borderRadius: BorderRadius.circular(100)),
        child: Stack(
          children: [
            Positioned(
                bottom: 8,
                right: 3,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 11, 162, 16),
                      borderRadius: BorderRadius.circular(100)),
                ))
          ],
        ),
      ),
    );
  }
}
