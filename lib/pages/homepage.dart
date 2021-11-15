import 'package:enna_login/tabs/home_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Color(0xA6000000),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Enna',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: blue,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  const Icon(
                    Icons.notifications,
                    color: Color(0xA6000000),
                  ),
                  Positioned(
                    top: 15,
                    left: 15,
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(80),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 75,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/transaction.png',
                  width: 20,
                  color: _selectedIndex == 1 ? blue : Color(0xA6000000),
                ),
                label: 'Transactions',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/calendar.png',
                  width: 20,
                  color: _selectedIndex == 2 ? blue : Color(0xA6000000),
                ),
                label: 'Event',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/bag.png',
                  width: 20,
                  color: _selectedIndex == 3 ? blue : Color(0xA6000000),
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/contacts.png',
                  width: 20,
                  color: _selectedIndex == 4 ? blue : Color(0xA6000000),
                ),
                label: 'Contacts',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (i) => setState(() {
              _selectedIndex = i;
            }),
            selectedItemColor: blue,
            unselectedItemColor: Colors.black54,
            unselectedLabelStyle: TextStyle(fontSize: 11),
          ),
        ),
        body: HomeTab(),
      ),
    );
  }
}
