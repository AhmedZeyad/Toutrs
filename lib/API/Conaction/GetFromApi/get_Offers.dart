import 'package:http/http.dart';

import '../../Models/RestorentModles/Offres.dart';

class geteroffers{

  Future offrsget() async {
    var URL = Uri.parse("http://localhost:4000/offres");
    Response response = await get(URL);
    if (response.statusCode == 200) {
      var json = response.body;
      print(json);
      return offresFromJson(json);
    }
  }
}