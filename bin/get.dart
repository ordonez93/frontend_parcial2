import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final url = Uri.parse(
      'http://127.0.0.1:8000/biblioteca/api/autores/'); // Cambia la URL por la de tu API
  final response = await http.get(url);
  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    print(responseData); // Imprime los datos JSON en la consola
  } else {
    print('Error al obtener los datos: ${response.statusCode}');
  }
}
