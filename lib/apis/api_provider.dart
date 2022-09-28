

import 'package:http/http.dart'as http;
class ApiProvider{


Future<http.Response> get({required String url})async{

   final response= await http.get(Uri.parse(url));
   return response;

 }

}