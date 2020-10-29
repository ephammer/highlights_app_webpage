import 'package:flutter/material.dart';
import 'package:highlights_webpage/ui/tools/adaptive.dart';

class Iphone extends StatelessWidget {
  String imagePath;

  Iphone({@required this.imagePath});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final isDesktop = isDisplayDesktop(context);

    return Card(
      elevation: 35,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(isDesktop ? 35 : 15),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: isDesktop ? 10 : 5,
          ),
          borderRadius: BorderRadius.circular(isDesktop ? 35 : 15),
        ),
        height: isDesktop ? size.height * 0.8 : size.height * 0.5,
        width: isDesktop ? size.height * 0.8 * 0.5 : size.height * 0.5 * 0.5,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              isDesktop ? 35 : 15,
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
