import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_shifrogram/ui/components/constants.dart';

class ChatInputField extends StatefulWidget {
  late int dialogId;
  ChatInputField();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatInputFieldState();
  }
}

class ChatInputFieldState extends State<ChatInputField> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> attachmentWidgets = [];

    return Column(
      children: [
        Container(
          height: height * 0.001,
          width: width,
          decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: attachmentWidgets,
          ),
        ),
        Container(
          width: width * 0.6,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: kDefaultPadding / 2,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 32,
                color: Color(0xFF087949).withOpacity(0.08),
              ),
            ],
          ),
          child: SafeArea(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding * 0.75,
                    ),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: kDefaultPadding / 4),
                        Expanded(
                          child: TextField(
                            style: TextStyle(),
                            maxLines: 3,
                            minLines: 1,
                            textCapitalization: TextCapitalization.sentences,
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Сообщение",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                            width: 30.0,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              // border color
                              shape: BoxShape.circle,
                            ),
                            child: InkWell(
                              splashColor: Colors.red,
                              radius: 30,
                              onTapDown: (details) async {
                                setState(() {});
                              },
                              onTapUp: (details) async {},
                              child: Icon(Icons.mic),
                            )),
                        IconButton(
                          onPressed: () async {},
                          icon: Icon(
                            Icons.attach_file,
                            color: Color.fromARGB(255, 20, 20, 20),
                            // color: Theme.of(context)
                            //     .textTheme
                            //     .bodyText1!
                            //     .color!
                            //     .withOpacity(0.64),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {},
                          icon: Icon(
                            Icons.send,
                            // color: Theme.of(context)
                            //     .textTheme
                            //     .bodyText1!
                            //     .color!
                            //     .withOpacity(0.64),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
