import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  // Llama a la función createResource para realizar la solicitud POST
  int id=4;
  updateResource(id);
}

Future<void> updateResource(int resourceId) async {
final url = Uri.parse('http://127.0.0.1:8000/biblioteca/api/autores/$resourceId/'); // URL con el ID delrecurso a actualizar
final data = {
  "nombre_autor": "Jacobo Pérez",
  }; // Nuevos datos (cámbialo según tus necesidades)
final response = await http.put(
url,
body: json.encode(data),
headers: {'Content-Type': 'application/json'},
);
if (response.statusCode == 200) { // 200 significa que la actualización se realizó con éxito
final responseData = json.decode(response.body);
print(responseData);
} else {
print('Error al actualizar el recurso: ${response.statusCode}');
}
}