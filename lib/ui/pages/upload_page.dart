import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlights_webpage/ui/elements/iphone.dart';
import 'package:url_launcher/url_launcher.dart';

class UploadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Iphone(
                    imagePath: 'assets/screens/upload.png',
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
                    '... just upload your My Clippings.txt file from you Kindle and let the magic happen.',
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
                  //     'Highlights makes it easy to revisit and learn from your ebook',
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              FlatButton(
                onPressed: sendEmail,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Contact',
                    style: TextStyle(color: Colors.red[800]),
                  ),
                ),
              ),
              Text(
                'by Ephraim Hammer',
                textAlign: TextAlign.center,
              ),
              Text(
                '© 2020',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void sendEmail() async {
    const url = 'mailto:<ephraim.hammer@gmail.com>';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
