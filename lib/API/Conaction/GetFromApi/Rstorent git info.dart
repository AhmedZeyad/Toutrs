import 'package:http/http.dart';
import 'package:tuters/API/Models/RestorentModles/MY_RestorentInfo.dart';

class gerestorent{

Future restorent_got() async {
  var URL = Uri.parse("http://localhost:4000/allres");
  Response response = await get(URL);
  if (response.statusCode == 200) {
    var json = response.body;
    // print(response.body);

    return allResFromJson(json);
  }

}}