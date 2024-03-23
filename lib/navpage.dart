import 'package:app/chat/home.dart' as thirdTab;
import 'package:app/diary/diary.dart' as secondTab;
import 'package:app/home/home.dart' as firstTab;
import 'package:app/profile/profile.dart' as fifthTab;
import 'package:app/stat/stat.dart' as fourthTab;
import 'package:flutter/material.dart';

//Initial widget
class Navbar extends StatefulWidget {
  @override
  HomeWidget createState() => HomeWidget();
}

//State<StatefulWidget> action method
class HomeWidget extends State<Navbar> {
  int _selectedTab = 0;

  //Page controller
  final PageController _navPage = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _navPage,
        onPageChanged: (index) {
          setState(() {
            _selectedTab = index;
          });
        },
        children: <Widget>[
          firstTab.home_page(),
          secondTab.Diary(),
          thirdTab.HomePage(),
          fourthTab.Stat(),
          fifthTab.Profile(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        color: Color.fromARGB(
            255, 134, 208, 203), // Set the background color to black
        child: Container(
          color: Color.fromARGB(
              255, 134, 208, 203), // Set the background color to black
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                iconSize: 30,
                icon: Icon(
                  _selectedTab == 0 ? Icons.home : Icons.home_outlined,
                  color: _selectedTab == 0
                      ? const Color.fromARGB(255, 70, 66, 68)
                      : null, // Set icon color to white if selected
                ),
                onPressed: () {
                  setState(() {
                    _navPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(
                  _selectedTab == 1 ? Icons.book : Icons.book_outlined,
                  color: _selectedTab == 1
                      ? Color.fromARGB(255, 70, 66, 68)
                      : null, // Set icon color to white if selected
                ),
                onPressed: () {
                  setState(() {
                    _navPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(
                  _selectedTab == 2 ? Icons.message : Icons.message_outlined,
                  color: _selectedTab == 2
                      ? Color.fromARGB(255, 70, 66, 68)
                      : null, // Set icon color to white if selected
                ),
                onPressed: () {
                  setState(() {
                    _navPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(
                  _selectedTab == 3
                      ? Icons.bar_chart
                      : Icons.bar_chart_outlined,
                  color: _selectedTab == 3
                      ? Color.fromARGB(255, 70, 66, 68)
                      : null, // Set icon color to white if selected
                ),
                onPressed: () {
                  setState(() {
                    _navPage.jumpToPage(3);
                  });
                },
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(
                  _selectedTab == 4 ? Icons.person : Icons.person_outline,
                  color: _selectedTab == 4
                      ? Color.fromARGB(255, 70, 66, 68)
                      : null, // Set icon color to white if selected
                ),
                onPressed: () {
                  setState(() {
                    _navPage.jumpToPage(4);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}