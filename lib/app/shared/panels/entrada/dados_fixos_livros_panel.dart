// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class DadosFixosLivrosPanel extends StatefulWidget {
  final TextEditingController ilustracoes_18_21,
  publicoAlvo_22,
  formaDoDocumento_23,
  naturezaDoConteudo_24_27,
  publicacaoGovernamental_28,
  publicacaoDeConferencia_29,
  obraComemorativa_30,
  indice_31,
  indefinido_32,
  formaLiteraria_33,
  biografia_34;


  const DadosFixosLivrosPanel({
    super.key,
    required this.ilustracoes_18_21,
    required this.publicoAlvo_22,
    required this.formaDoDocumento_23,
    required this.naturezaDoConteudo_24_27,
    required this.publicacaoGovernamental_28,
    required this.publicacaoDeConferencia_29,
    required this.obraComemorativa_30,
    required this.indice_31,
    required this.indefinido_32,
    required this.formaLiteraria_33,
    required this.biografia_34
  });

  @override
  State<DadosFixosLivrosPanel> createState() => _DadosFixosLivrosPanelState();
}

class _DadosFixosLivrosPanelState extends State<DadosFixosLivrosPanel> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: const Border.fromBorderSide(BorderSide(color: ClassAppColors.azul)),
        borderRadius: BorderRadius.circular(4.0)
      ),
      child: ExpansionPanelList(
        expansionCallback: (panelIndex, isExpanded) {
          setState(() {
            value = !value;
          });
        },
        children: [
          ExpansionPanel(
            isExpanded: value,
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text(
                  'Tipo de material',
                  style: ClassAppEstilosTexto.azul18w500Montserrat,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormFieldWidget(
                    controller: widget.ilustracoes_18_21,
                    titulo: '(18-21) - Ilustrações',
                    length: 4,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.publicoAlvo_22,
                    titulo: '(22) - Publico alvo',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.formaDoDocumento_23,
                    titulo: '(23) - Forma do documento',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.naturezaDoConteudo_24_27,
                    titulo: '(24-27) - Natureza do conteúdo',
                    length: 4,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.publicacaoGovernamental_28,
                    titulo: '(28) - Publicação governamental',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.publicacaoDeConferencia_29,
                    titulo: '(29) - Publicação de conferência',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.obraComemorativa_30,
                    titulo: '(30) - Obra comemorativa',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.indice_31,
                    titulo: '(31) - Índice',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.indefinido_32,
                    titulo: '(32) - Indefinido',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.formaLiteraria_33,
                    titulo: '(33) - Forma literária',
                    length: 1,
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextFormFieldWidget(
                    controller: widget.biografia_34,
                    titulo: '(34) - Biografia',
                    length: 1,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
