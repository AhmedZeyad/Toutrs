import 'package:http/http.dart';

import '../../Models/login/check.dart';

class checkpass{

  Future get_pass(String Emal) async {
    var URL = Uri.parse("http://localhost:4000/check/${Emal}");
    Response response = await get(URL);
    if (response.statusCode == 200) {
      var json = response.body;
      return checkpassFromJson(json);
    }
  }
}
