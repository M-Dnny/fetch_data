import 'package:fetch_data/data/modal/data.dart';
import 'package:http/http.dart' as http;

class DataProvider {
  Future<List<Datum>> fetchPost() async {
    var client = http.Client();

    var uri = Uri.parse('https://reqres.in/api/users?page=2');
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return dataFromJson(json).data;
    } else {
      throw Exception('Failed to load album');
    }
  }
}

// Future<List<Data>> fetchPost() async {
//   var client = http.Client();

//   var uri = Uri.parse('https://gorest.co.in/public/v2/users');
//   var response = await client.get(uri);

//   if (response.statusCode == 200) {
//     var json = response.body;
//     return dataFromJson(json);
//   } else {
//     throw Exception('Failed to load album');
//   }
// }
