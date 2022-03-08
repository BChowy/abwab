import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchString = "";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .01, vertical: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                width: width * 0.1,
                child: IconButton(
                  icon: const Icon(Icons.filter_alt_outlined),
                  iconSize: 30.0,
                  color: Colors.grey,
                  onPressed: () {
                    setState(() {
                      //what happens when filter button is pressed
                    });
                  },
                ),
              ),
            ],
          ),
          const Spacer(),
          //const SizedBox(width: 5),
          Column(
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 40,
                  width: width * 0.80,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        searchString = value;
                      });
                    },
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(5),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff36CB6D), width: 2.0),
                        ),
                        alignLabelWithHint: true,
                        hintText: 'مثال: باب السلام',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff36CB6D),
                        )),
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
