import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:abwab/detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './gates_page/search_bar.dart';
import './gates_page/gates_list.dart';
import './gates_page/info.dart';
import './detail.dart';

void main() {
  runApp(const MyApp());
}

const primaryColor = Color(0xff36CB6D);
const secondaryColor = Color(0xffffffff);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eatamrna',
      theme: ThemeData(
        fontFamily: 'CairoScript',
        primaryColor: primaryColor,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {


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
              CupertinoIcons.exclamationmark_circle,
              color: Colors.white,
            ),
            onPressed: () {
              showAlertDialog(context);
            },
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Search(),
              ElevatedButton(
                child: Text('TEXT'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsPage(
                              title: '',
                            )),
                  );
                },
              ),
              const GatesList(),
            ],
          ),
        ),
      ),
    );
  }
}
