import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return showAlertDialog(context);
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget accept = Row(mainAxisAlignment: MainAxisAlignment.start, children: [
    ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xff36CB6D))),
      child: Row(children: const [
        Text("إغلاق"),
        SizedBox(
          width: 5,
        ),
        Icon(Icons.close, color: Colors.white)
      ]),
      onPressed: () {
        Navigator.of(context).pop();
      },
    )
  ]);

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Colors.black.withAlpha(150),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    title: Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
      Text("أبواب",
          style: (TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
      SizedBox(
        width: 15,
      ),
      Icon(
        CupertinoIcons.exclamationmark_circle,
        color: Colors.white,
      )
    ]),
    content: SizedBox(
        height: (MediaQuery.of(context).size.height) * 0.45,
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          const Text(
            ".هذه الخاصية ستساعدك لمعرفة تفاصيل الأبواب والمسار الأقرب لك لتصل إلى البوابة",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 10),
          const Text(
            "دخول: هذه البوابة تسمح بالدخول فقط",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.right,
          ),
          const Text(
            "خروج: هذه البوابة تسمح بالخروج فقط",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "البوابة متاحة",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(Icons.circle, color: Colors.green[200]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "البوابة مزدحمة",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(Icons.circle, color: Colors.yellow[200]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "البوابة مغلقة",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.right,
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(Icons.circle, color: Colors.red[200]),
            ],
          ),
        ])),
    actions: [
      accept,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
