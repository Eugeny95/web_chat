import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'dart:developer' as developer;

import 'package:web_shifrogram/ui/components/constants.dart';
import 'package:web_shifrogram/ui/screens/dialog_screen/components/%D1%81ontact_%D1%81ard.dart';
import 'package:web_shifrogram/ui/screens/dialog_screen/components/message_area.dart';

class BodyMain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BodyMainState();
  }
}

class _BodyMainState extends State<BodyMain> with TickerProviderStateMixin {
  var openClose = ValueNotifier<bool>(true);
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 5), upperBound: pi * 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      floatingActionButton: SpeedDial(
        openCloseDial: openClose,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22),
        backgroundColor: Color.fromARGB(231, 31, 31, 31),
        visible: true,
        curve: Curves.bounceIn,
        children: [
          // FAB 1
          SpeedDialChild(
              child: Icon(
                Icons.sync,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 37, 37, 37),
              onTap: () async {},
              label: 'Синхронизировать контакты',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 16.0),
              labelBackgroundColor: Color.fromARGB(255, 37, 37, 37)),
          // FAB 2
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
                  fontSize: 16.0),
              labelBackgroundColor: Color.fromARGB(255, 37, 37, 37))
        ],
      ),
      // : FloatingActionButton(
      //     onPressed: () {},
      //     child: RotationTransition(
      //         turns: Tween(begin: 0.0, end: 1.0)
      //             .animate(animationController),
      //         child: Icon(Icons.sync_outlined)),
      //   ),

      body: Container(
          decoration:
              BoxDecoration(color: const Color.fromARGB(255, 251, 251, 251)
                  // borderRadius: BorderRadius.vertical(
                  //   top: Radius.circular(30),
                  // ),

                  ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(30),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/icon/back.png",
                      ),
                      fit: BoxFit.fill,
                      opacity: 70),
                  // color: Color.fromARGB(87, 205, 205, 205),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: width * 0.25,
                          child: ContactCard(
                            name: 'Иван Петров',
                            // st.contacts[index].first_name,
                            id: 89123456678,
                            // int.parse(st.contacts![index]
                            //     .phoneNumber),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: width * 0.25,
                          child: ContactCard(
                            name: 'Витя Сидоров',
                            // st.contacts[index].first_name,
                            id: 89991234567,
                            // int.parse(st.contacts![index]
                            //     .phoneNumber),
                          ),
                        ),
                      ),
                    ]),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    ),
                  ),
                  width: width * 0.75,

                  // color: const Color.fromARGB(255, 173, 51, 51),
                  child: MessageArea())
            ],
          )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
