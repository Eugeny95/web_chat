import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:web_shifrogram/ui/screens/dialog_screen/dialog_screen.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //notifications
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // supportedLocales: [Locale('ru')],
      title: 'Shifrogram',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: {
        '/main': (context) => MainScreen(),
      },
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    ChatsScreen(),
    // PeoplePage(),
    // StorePage(),
    // ProfilePage(),
  ];
  int _selectedIndex = 0;

  Future<void> checkUpdates() async {}

  @override
  void initState() {
    super.initState();
    checkUpdates();
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: Colors.transparent,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), label: "Чаты"),
        BottomNavigationBarItem(
            icon: Icon(Icons.people_outlined), label: "Контакты"),
        // BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined), label: "Профиль"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: screens[_selectedIndex]),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.white24, spreadRadius: 0, blurRadius: 10),
              ],
            ),
            child: Material(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )),
              // child: buildBottomNavigationBar()
            )));
  }
}
