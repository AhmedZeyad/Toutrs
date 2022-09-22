import 'package:http/http.dart';
import 'package:tuters/API/Models/RestorentModles/MY_RestorentInfo.dart';
import 'package:tuters/API/Models/RestorentModles/Meals_Res.dart';

class getinfomeal{

  Future meal_get(String melsrestorent) async {
    var URL = Uri.parse("http://localhost:4000/meels/${melsrestorent}");
    Response response = await get(URL);
    if (response.statusCode == 200) {
      var json = response.body;
print(json);
      return mealsFromJson(json);
    }
  }
}
class getallmeal{

  Future meal_allget() async {
    var URL = Uri.parse("http://localhost:4000/allmell");
    Response response = await get(URL);
    if (response.statusCode == 200) {
      var json = response.body;
print(json);
      return mealsFromJson(json);
    }
  }
}