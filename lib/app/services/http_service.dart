import 'package:http/http.dart' as http;

class HttpService {
  var getHttp = http.Client();

  //URL BASE DE PRODUÇÃO
  static const baseUrl = 'https://www.w3soft3.com.br/w3bibliotecaAPI/';
  
  //flutter build web --base-href "/W3Biblioteca/" 
  
  //URL BASE DE LOCALHOST
  // static const baseUrl = 'http://localhost:50578/'; //TODO: alterar quando realizar o build
}
