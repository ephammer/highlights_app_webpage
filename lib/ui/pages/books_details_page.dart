import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlights_webpage/ui/elements/iphone.dart';
import 'package:highlights_webpage/ui/tools/adaptive.dart';

class BookDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);

    return isDesktop
        ? Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Book Details',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lobster(
                        textStyle: Theme.of(context).textTheme.headline4,
                        letterSpacing: 3,
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(
                    //     'See Book Details',
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //       fontSize: 32,
                    //       fontWeight: FontWeight.w700,
                    //       fontStyle: FontStyle.italic,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Iphone(
                      imagePath: 'assets/screens/bookdetails.png',
                    ),
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Iphone(
                      imagePath: 'assets/screens/bookdetails.png',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Book Details',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lobster(
                        textStyle: Theme.of(context).textTheme.headline4,
                        letterSpacing: 3,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(
                    //     'See Book Details',
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //       fontSize: 32,
                    //       fontWeight: FontWeight.w700,
                    //       fontStyle: FontStyle.italic,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          );
  }
}
