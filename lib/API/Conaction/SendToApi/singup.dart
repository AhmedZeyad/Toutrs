import 'package:http/http.dart';

Future<int> SingUp(String NAME,String Email, String PhonNymber,String password) async {
  Map<String,String>userinf={
    "user_name":NAME,
    "Email":Email,
    "PhonNymber": PhonNymber,
    "password": password,
  };

  var Url = Uri.parse("http://localhost:4000/singup");

  Response response = await post(Url, body:userinf
  );

  print('Response body: ${response.body}');
  return response.statusCode;
}
