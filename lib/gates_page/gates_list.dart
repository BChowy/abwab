// import 'dart:convert';
// import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import '../gates_api.dart';

class GatesList extends StatefulWidget {
  const GatesList({Key? key}) : super(key: key);

  @override
  State<GatesList> createState() => _GatesListState();
}

class _GatesListState extends State<GatesList> {
  var dataList;

  getGates() async {
    final String response =
        await rootBundle.loadString('assets/Database/datatable.json');
    var data = await json.decode(response);
    // print(data[2]['data'][0]['name']);
    setState(() {
      dataList = data[2]['data'];
      print(dataList);
    });
  }

  @override
  void initState() {
    super.initState();
    getGates();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var coolors = {
      "green": const Color(0xffa5d6a7),
      "yellow": const Color(0xfffff59d),
      "red": const Color(0xffef9a9a),
    };

    return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: width * .01, vertical: 20.0),
              // child: Center(
              child: Stack(children: [
                SizedBox(
                  height: height,
                  width: width,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                         color: dataList[index]['availability'] == 'green' ? const Color(0xffa5d6a7) : dataList[index]['availability'] == 'yellow' ? const Color(0xfffff59d) : const Color(0xffef9a9a),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * .01)),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("دخول",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: (height + width) / 70)),
                                  ]),
                              const Spacer(),
                              SizedBox(
                                  height: height * .1,
                                  width: width * .80,
                                  child: Card(
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      color: Colors.white.withOpacity(0.8),
                                      child: Column(children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: width * 0.09,
                                                    vertical:
                                                        (height * 0.1) / 6),
                                                child: Text(
                                                  dataList[index]['name'],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize:
                                                          (height + width) /
                                                              70),
                                                )))
                                      ]))),
                            ],
                          ));
                    },
                  ),
                )
              ]));
     
  }
}
