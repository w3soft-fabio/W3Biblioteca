import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';

class ReferenciaWidget extends StatelessWidget {
  final String? autor, titulo, subtitulo, edicao, local, dataPublicacao, extensao, dimensao;

  const ReferenciaWidget({
    super.key,
    this.autor,
    this.titulo,
    this.subtitulo,
    this.edicao,
    this.local,
    this.dataPublicacao,
    this.extensao,
    this.dimensao
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      '$autor. $titulo $subtitulo $local $edicao $dataPublicacao $extensao $dimensao',
      style: ClassAppEstilosTexto.preto16w400Montserrat,
    );
  }
}
