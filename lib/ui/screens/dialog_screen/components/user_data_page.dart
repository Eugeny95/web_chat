import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_shifrogram/ui/components/constants.dart';

class UserDataPage extends StatefulWidget {
  final String name;
  final int id;
  UserDataPage({required this.name, required this.id});
  @override
  _UserDataPageState createState() {
    return _UserDataPageState();
  }
}

class _UserDataPageState extends State<UserDataPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color.fromARGB(180, 253, 253, 253)),
          backgroundColor: kPrimaryColor,
          title: Text('Данные пользователя',
              style: TextStyle(
                  color: Color.fromARGB(229, 255, 255, 255), fontSize: 18))),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/icon/back.png",
                ),
                fit: BoxFit.fill,
                opacity: 0.25)),
        child: Center(
          child: Column(children: [
            Padding(padding: EdgeInsets.only(top: 40)),
            (widget.name != '') & (widget.name.length != 1)
                ? CircleAvatar(
                    backgroundColor: kThirdColor,
                    radius: 74,
                    child: Text(widget.name.substring(0, 2),
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                  )
                : CircleAvatar(
                    backgroundColor: kThirdColor,
                    radius: 74,
                    child: Icon(Icons.face_6, size: 66)),
            Padding(padding: EdgeInsets.only(top: 60)),
            Container(
              width: width * 0.9,
              child: Column(children: [
                Container(
                    child: Row(
                  children: [
                    Icon(Icons.person, size: 22),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Expanded(
                      child: Text(
                        widget.name,
                        style: TextStyle(fontSize: 18),
                      ),
                      flex: 7,
                    ),
                  ],
                )),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Container(
                    child: Row(
                  children: [
                    Icon(Icons.phone_iphone_outlined, size: 22),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Expanded(
                      child: Text(
                        widget.id.toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                      flex: 7,
                    ),
                  ],
                )),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: height * 0.05,
                ),

                // Row(
                //   children: [
                //     Expanded(
                //       child: ElevatedButton(
                //           style: ElevatedButton.styleFrom(
                //             backgroundColor: kPrimaryColor,
                //             shape: RoundedRectangleBorder(
                //               borderRadius:
                //                   BorderRadius.circular(12), // <-- Radius
                //             ),
                //             elevation: 5,
                //             minimumSize: Size(height * 0.13, width * 0.13),
                //           ),
                //           onPressed: () {},
                //           child: Row(
                //             children: [
                //               Icon(Icons.phone,
                //                   size: 25,
                //                   color: Color.fromARGB(255, 86, 172, 89)),
                //               SizedBox(
                //                 width: width * 0.02,
                //               ),
                //               Text('Вызов',
                //                   style: TextStyle(
                //                       color: Color.fromARGB(255, 220, 220, 220))),
                //             ],
                //           )),
                //       flex: 4,
                //     ),
                //     SizedBox(
                //       width: width * 0.02,
                //     ),
                //     Expanded(
                //       child: ElevatedButton(
                //           style: ElevatedButton.styleFrom(
                //             backgroundColor: kPrimaryColor,
                //             shape: RoundedRectangleBorder(
                //               borderRadius:
                //                   BorderRadius.circular(12), // <-- Radius
                //             ),
                //             elevation: 5,
                //             minimumSize: Size(height * 0.13, width * 0.13),
                //           ),
                //           onPressed: () {},
                //           child: Row(
                //             children: [
                //               Icon(Icons.message_outlined,
                //                   size: 25,
                //                   color: Color.fromARGB(255, 86, 172, 89)),
                //               SizedBox(
                //                 width: width * 0.02,
                //               ),
                //               Text('Начать чат',
                //                   style: TextStyle(
                //                       color: Color.fromARGB(255, 220, 220, 220))),
                //             ],
                //           )),
                //       flex: 5,
                //     ),
                //   ],
                // ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
