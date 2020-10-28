import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlights_webpage/ui/elements/iphone.dart';
import 'dart:js' as js;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(35),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      35,
                    ),
                  ),
                  child: Image.asset(
                    'assets/ic_launcher/web_hi_res_512.png',
                    fit: BoxFit.cover,
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Highlights',
                  style: GoogleFonts.lobster(
                    textStyle: Theme.of(context).textTheme.headline4,
                    letterSpacing: 3,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Did you alway wanted to see all your Kindle highlights in a way that didn\'t suck?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Then this app is made for you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Material(
                // needed
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    js.context.callMethod(
                        "open", ["https://ephammer.github.io/kindleNotesApp"]);
                  },
                  // needed
                  child: Image.asset(
                    'assets/images/google-play-badge.png',
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Iphone(
                imagePath: 'assets/screens/bookshelf.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
