import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(45.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text(
              'أبواب',
              style:
                  (TextStyle(fontWeight: FontWeight.w900, color: Colors.white)),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Container(
          color: Colors.grey[200],
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: height * 0.06),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xffffffff)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: const BorderSide(
                                      width: 2, color: Color(0xff36CB6D))))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height * 0.01, horizontal: width * 0.02),
                        child: Text(
                          'إثراء',
                          style: TextStyle(
                              fontSize: (height + width) / 100,
                              color: const Color(0xff36CB6D),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        //here what happens when pressed
                      },
                    ),
                    Column(children: [
                      Text(
                        'باب الفتح',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: (height + width) / 50),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(children: [
                        Text(
                          "البوابة مزدحمة",
                          style: TextStyle(fontSize: (width + height) / 100),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.circle, color: Colors.red[200]),
                      ]),
                    ]),
                  ],
                ),
              ),
              Divider(
                thickness: height * 0.01,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.03),
                  child: Center(
                    child: Text('افتح المسار على خرائط قوقل',
                        style: TextStyle(
                          fontSize: (width + height) / 120,
                        )),
                  )),
                  
            ]),
          ),
        ));
  }
}
