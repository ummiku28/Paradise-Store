import 'dart:convert'; //melakukan decode atau encode
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:store/listshop.dart';



class Repository {
  final String apiUrl = "https://shopapp-f3067-default-rtdb.firebaseio.com/shopapp.json";

  Future<List<Shop>> fetchDataPlaces() async {
    Response response = await http.get(Uri.parse(apiUrl));
    List<Shop> dataPlaces;
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = json.decode(response.body);

      dataPlaces = jsonData.values.map((value) {
        return Shop.fromJson(value);
      }).toList();

      return dataPlaces;
    } else {
      throw Exception('Failed to load data places');
    }
  }
}
