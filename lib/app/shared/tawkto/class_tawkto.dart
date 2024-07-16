import 'dart:developer';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class ClassTawkto {
  Future<void> loadTawkTo() async {
    try {
      final script = html.ScriptElement()
        ..type = 'text/javascript'
        ..async = true
        ..src = 'https://embed.tawk.to/5a68d3fed7591465c7070fbb/default'
        ..charset = 'UTF-8'
        ..setAttribute('crossorigin', '*')
        ..id = 'script';

      html.document.body?.append(script);
    } catch (e, s) {
      log('Erro ao iniciar tawkto', error: e, stackTrace: s);
    }
  }
}
