import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:highlights_webpage/ui/elements/iphone.dart';
import 'package:highlights_webpage/ui/tools/adaptive.dart';

class HighlightsDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = isDisplayDesktop(context);

    return isDesktop
        ? Row(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Iphone(
                      imagePath: 'assets/screens/highlights.png',
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
                      'Get the most out of what you read.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lobster(
                        textStyle: Theme.of(context).textTheme.headline4,
                        letterSpacing: 3,
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Highlights makes it easy to revisit and learn from your ebook',
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
                        '- Filter per book\n- Search your highlights\n- Easy to share',
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
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
                      imagePath: 'assets/screens/highlights.png',
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
                      'Get the most out of what you read.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lobster(
                        textStyle: Theme.of(context).textTheme.headline4,
                        letterSpacing: 3,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Highlights makes it easy to revisit and learn from your ebook',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '- Filter per book\n- Search your highlights\n- Easy to share',
                        // textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
