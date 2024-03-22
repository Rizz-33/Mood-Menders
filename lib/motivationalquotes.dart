import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class motivationalquotes_page extends StatefulWidget {
  @override
  _motivationalquotes_pageState createState() =>
      _motivationalquotes_pageState();
}

class _motivationalquotes_pageState extends State<motivationalquotes_page> {
  final PageController _pageController = PageController();
  final List<Map<String, dynamic>> _pages = [
    {
      'image': 'lib/images/mq1.jpeg',
    },
    {
      'image': 'lib/images/mq2.jpeg',
    },
    {
      'image': 'lib/images/mq3.jpeg',
    },
    {
      'image': 'lib/images/mq4.jpeg',
    },
    {
      'image': 'lib/images/mq5.jpeg',
    },
    {
      'image': 'lib/images/mq6.jpeg',
    },
    {
      'image': 'lib/images/mq7.jpeg',
    },
    {
      'image': 'lib/images/mq8.jpeg',
    },
  ];
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentPage < _pages.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  void _cancelTimer() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Motivational Quotes',
                style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    color: const Color.fromARGB(255, 70, 66, 68),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Image.asset(
                'lib/images/leaf.png',
                height: 72,
              )
            ],
          ),
        ),
        titleSpacing: 4.0,
        toolbarHeight: 65,
        toolbarOpacity: 0.9,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(18),
              bottomLeft: Radius.circular(18)),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        elevation: 0.00,
        backgroundColor: Color.fromARGB(255, 134, 208, 203),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: _cancelTimer,
            child: PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      _pages[index]['image'],
                      fit: BoxFit.contain,
                      width:
                          index == 3 ? 350 : 300, // Adjust width conditionally
                      height:
                          index == 3 ? 350 : 300, // Adjust height conditionally
                    ),
                    const SizedBox(height: 30.0),
                    if (_pages[index]['text'] != null)
                      // Check if text is present
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        child: Text(
                          _pages[index]['text'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Color.fromARGB(255, 36, 36, 36),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    const SizedBox(height: 0.0),
                  ],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _pages.length; i++) {
      indicators.add(
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Container(
            width: 12.0,
            height: 12.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black, // Border color
                width: 1.0, // Border width
              ),
              color: _currentPage == i
                  ? Color(0xFF61E2AA)
                  : const Color.fromARGB(255, 199, 195, 195),
            ),
          ),
        ),
      );
    }
    return indicators;
  }
}
