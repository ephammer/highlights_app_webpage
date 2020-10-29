import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:highlights_webpage/ui/pages/books_details_page.dart';
import 'package:highlights_webpage/ui/pages/highlights_description_page.dart';
import 'package:highlights_webpage/ui/pages/home_page.dart';
import 'package:highlights_webpage/ui/pages/upload_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Highlights App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Highlights App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController();

  List<Widget> _pages = [
    HomePage(),
    HighlightsDescriptionPage(),
    BookDetailsPage(),
    UploadPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Row(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              scrollDirection: Axis.vertical,
              pageSnapping: true,
              children: _pages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SmoothPageIndicator(
              axisDirection: Axis.vertical,
              controller: controller,
              count: _pages.length,
              effect: WormEffect(
                activeDotColor: Colors.red[800],
                radius: 8,
                dotHeight: 8,
                dotWidth: 8,
              ),
              onDotClicked: (index) {
                controller.jumpToPage(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
