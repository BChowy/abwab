import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class GateAPI {
  getGates() async {
    var theURL = 'http://localhost/abwab/getData.php';

    var res = await http.get(Uri.parse(Uri.encodeFull(theURL)),
        headers: {"Access-Control-Allow-Origin": "*"});
    //var responseBody = json.decode(res.body);

    // print(responseBody.statusCode);
    // print(responseBody);
    // return responseBody;
  }
}
