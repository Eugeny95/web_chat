import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_shifrogram/ui/components/constants.dart';
import 'package:web_shifrogram/ui/screens/dialog_screen/components/user_data_page.dart';

class ContactCard extends StatelessWidget {
  final String name;
  final int id;
  ContactCard({required this.name, required this.id});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () async {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => UserDataPage(name: name, id: id)));

          // BlocProvider.of<DialogBloc>(context).add(AddDialogEvent(id));
          // var subscription;
          // subscription =
          //     BlocProvider.of<DialogBloc>(context).stream.listen((event) {
          //   if (event.runtimeType == DialogListState) {
          //     var ev = event as DialogListState;
          //     for (var dialog in ev.dialogsList!) {
          //       if (dialog.name == id.toString()) {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => MessagesScreen(
          //                       dialog: dialog,
          //                     )));
          //         subscription.cancel();
          //       }
          //     }
          //   }
          // });
        },
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  (name != '') & (name.length != 1)
                      ? CircleAvatar(
                          backgroundColor: kThirdColor,
                          radius: 24,
                          child: Text(name.substring(0, 2),
                              style: TextStyle(color: Colors.white)),
                        )
                      : CircleAvatar(
                          backgroundColor: kThirdColor,
                          radius: 24,
                          child: Icon(Icons.face_6, size: 16)

                          // child: Text(name.substring(0, 2),
                          //     style: TextStyle(color: Colors.white)),
                          ),
                  Padding(padding: EdgeInsets.only(right: 20)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Opacity(
                        opacity: 0.64,
                        child: Text(
                          id.toString(),
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
        ));
  }
}
