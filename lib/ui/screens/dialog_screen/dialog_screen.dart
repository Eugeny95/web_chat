import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:web_shifrogram/ui/components/constants.dart';
import 'package:web_shifrogram/ui/screens/dialog_screen/components/body_main.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  _ChatsScreenState() {}
  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyMain(),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 18),
        backgroundColor: Color.fromARGB(231, 34, 34, 34),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        visible: true,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.quick_contacts_mail_sharp,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 37, 37, 37),
              onTap: () async {},
              label: 'Создать контакт',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 12.0),
              labelBackgroundColor: Color.fromARGB(255, 37, 37, 37)),
          // FAB 1
          SpeedDialChild(
              child: Icon(
                Icons.group,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 37, 37, 37),
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) {
                //      return AddGroupChatDialog();
                //   },
                // );
              },
              label: 'Создать групповой чат',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 12.0),
              labelBackgroundColor: Color.fromARGB(255, 37, 37, 37)),
          // FAB 2
          SpeedDialChild(
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 37, 37, 37),
              onTap: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) {
                //     return AddChatDialog();
                //   },
                // );
              },
              label: 'Создать диалог',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 12.0),
              labelBackgroundColor: Color.fromARGB(255, 37, 37, 37)),
        ],
      ),
    );
  }

  double _width = 0;
  bool flagSerach = true;
  AppBar buildAppBar() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return AppBar(
      bottom: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.05), child: Text('')),
      backgroundColor: kPrimaryColor,
      automaticallyImplyLeading: false,
      title: const Text("   Шифрограм WebVersion",
          style: TextStyle(color: Colors.white, fontSize: 18)),
      actions: [
        Row(
          children: [
            AnimatedContainer(
                width: _width,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeIn,
                child: SearchBar(
                  onChanged: (value) {},
                )),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {
                if (!flagSerach) {
                  setState(() {
                    _width = width * 0.8;
                  });
                  flagSerach = true;
                } else {
                  flagSerach = false;
                  setState(() {
                    _width = 0;
                  });
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
