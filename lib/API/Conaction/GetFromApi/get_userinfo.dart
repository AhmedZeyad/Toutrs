import 'package:http/http.dart';

import '../../Models/login/Userinfo.dart';

class getiuser{

  Future usergeter(  String Email) async {
    var URL = Uri.parse("http://localhost:4000/GetUserInf/${Email}");
    Response response = await get(URL);
    if (response.statusCode == 200) {
      var json = response.body;
      print(json);
      return userInfoFromJson(json);
    }
  }
}