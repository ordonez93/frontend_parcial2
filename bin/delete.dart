import 'package:http/http.dart' as http;

void main(List<String> args) {
  // Llama a la función createResource para realizar la solicitud POST
  int id = 6;
  deleteResource(id);
}

Future<void> deleteResource(int resourceId) async {
  final url = Uri.parse(
      'http://127.0.0.1:8000/biblioteca/api/autores/$resourceId/'); // URL con el ID delrecurso a borrar
  final response = await http.delete(url);
  if (response.statusCode == 204) {
    // 204 significa que se ha eliminado el recurso con éxito
    print('Recurso eliminado con éxito');
  } else {
    print('Error al eliminar el recurso: ${response.statusCode}');
  }
}
