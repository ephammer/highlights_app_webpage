import 'package:flutter/material.dart';

class Iphone extends StatelessWidget {
  String imagePath;

  Iphone({@required this.imagePath});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      elevation: 35,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(35),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 10,
          ),
          borderRadius: BorderRadius.circular(35),
        ),
        height: size.height * 0.8,
        width: size.height * 0.8 * 0.5,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              35,
            ),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
