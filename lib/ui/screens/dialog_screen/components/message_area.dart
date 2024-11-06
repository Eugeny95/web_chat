import 'dart:async';

import 'package:flutter/material.dart';
import 'package:web_shifrogram/ui/components/constants.dart';
import 'package:web_shifrogram/ui/screens/dialog_screen/components/%D1%81ontact_%D1%81ard.dart';
import 'package:web_shifrogram/ui/screens/dialog_screen/components/chat_input_field.dart';

class MessageArea extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MessageAreaState();
  }
}

class MessageAreaState extends State<MessageArea> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  CircleAvatar(
                    backgroundColor: kThirdColor,
                    radius: 24,
                    child: Text('Ив', style: TextStyle(color: Colors.white)),
                  ),

                  // child: Text(name.substring(0, 2),
                  //     style: TextStyle(color: Colors.white)),

                  Padding(padding: EdgeInsets.only(right: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Иван Петров',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromARGB(188, 0, 0, 0)),
                      ),
                      Opacity(
                        opacity: 0.64,
                        child: Text(
                          'печатает...',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  )
                ]),
                Padding(padding: EdgeInsets.only(top: 10)),
              ],
            ),
          ),
        ),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),

                constraints: BoxConstraints(
                    maxWidth: width * 0.2, maxHeight: height * 0.1),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Привет! как дела???',
                    textAlign: TextAlign.start,

                    // softWrap: true,
                    // textDirection: TextDirection.ltr,

                    style: TextStyle(
                        color: const Color.fromARGB(243, 241, 241, 241)
                        // : Color.fromARGB(255, 2, 2, 2),
                        // Theme.of(context).textTheme.bodyText1!.color,
                        )),

                // FooterWidget(message: message)
              ),
              SizedBox(width: width * 0.08)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: width * 0.08),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),

                constraints: BoxConstraints(
                    maxWidth: width * 0.2, maxHeight: height * 0.1),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Привет, все отлично!! У тебя как?',
                    textAlign: TextAlign.start,

                    // softWrap: true,
                    // textDirection: TextDirection.ltr,

                    style: TextStyle(color: const Color.fromARGB(221, 0, 0, 0)
                        // : Color.fromARGB(255, 2, 2, 2),
                        // Theme.of(context).textTheme.bodyText1!.color,
                        )),

                // FooterWidget(message: message)
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: width * 0.08),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),

                constraints: BoxConstraints(
                    maxWidth: width * 0.2, maxHeight: height * 0.1),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Чем занимаешься?',
                    textAlign: TextAlign.start,

                    // softWrap: true,
                    // textDirection: TextDirection.ltr,

                    style: TextStyle(color: const Color.fromARGB(221, 0, 0, 0)
                        // : Color.fromARGB(255, 2, 2, 2),
                        // Theme.of(context).textTheme.bodyText1!.color,
                        )),

                // FooterWidget(message: message)
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),

                constraints: BoxConstraints(
                    maxWidth: width * 0.2, maxHeight: height * 0.1),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Тоже все хорошо',
                    textAlign: TextAlign.start,

                    // softWrap: true,
                    // textDirection: TextDirection.ltr,

                    style: TextStyle(
                        color: const Color.fromARGB(243, 241, 241, 241)
                        // : Color.fromARGB(255, 2, 2, 2),
                        // Theme.of(context).textTheme.bodyText1!.color,
                        )),

                // FooterWidget(message: message)
              ),
              SizedBox(width: width * 0.08)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 10),

                constraints: BoxConstraints(
                    maxWidth: width * 0.4, maxHeight: height * 0.1),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                    'Собираемся поехать на рыбалку на выходных! Не хочешь с нами?',
                    textAlign: TextAlign.start,

                    // softWrap: true,
                    // textDirection: TextDirection.ltr,

                    style: TextStyle(
                        color: const Color.fromARGB(243, 241, 241, 241)
                        // : Color.fromARGB(255, 2, 2, 2),
                        // Theme.of(context).textTheme.bodyText1!.color,
                        )),

                // FooterWidget(message: message)
              ),
              SizedBox(width: width * 0.08)
            ],
          ),
          ChatInputField(),
        ]),
      ],
    );

    // child: Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.horizontal(
    //       right: Radius.circular(30),
    //     ),
    //     image: DecorationImage(
    //         image: AssetImage(
    //           "assets/icon/back2.png",
    //         ),
    //         fit: BoxFit.fill,
    //         opacity: 10),
    //     // color: Color.fromARGB(87, 205, 205, 205),
    //   ),
    //   child: const Center(
    //       child: Text(
    //           'Отсутсвуют ключи шифрования для данного диалога. \n Пожалуйста, удалите диалог и создайте его заново')),
    // ),
  }
}
