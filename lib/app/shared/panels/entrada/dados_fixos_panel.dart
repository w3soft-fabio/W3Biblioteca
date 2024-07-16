// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class DadosFixosPanel extends StatefulWidget {
  final TextEditingController etiqueta,
    dataDeEntradaDoRegistroNoArquivo_00_05,
    tipodeDataOuStatusDePublicacao_06,
    data1_07_10,
    data2_11_14,
    lugarDePublicacaoProducaoExecucao_15_17,
    idiomaDoTextoDoDocumento_35_37,
    registroModificado_38,
    fonteDeCatalogacao_39;
  final Widget tipoDeMaterial_18_34;


  const DadosFixosPanel({
    super.key,
    required this.etiqueta,
    required this.dataDeEntradaDoRegistroNoArquivo_00_05,
    required this.tipodeDataOuStatusDePublicacao_06,
    required this.data1_07_10,
    required this.data2_11_14,
    required this.lugarDePublicacaoProducaoExecucao_15_17,
    required this.tipoDeMaterial_18_34,
    required this.idiomaDoTextoDoDocumento_35_37,
    required this.registroModificado_38,
    required this.fonteDeCatalogacao_39,
  });

  @override
  State<DadosFixosPanel> createState() => _DadosFixosPanelState();
}

class _DadosFixosPanelState extends State<DadosFixosPanel> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return ExpansionPanelList(
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
                '(008) - Todos os materiais ',
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
                TextFormFieldWidget(
                  controller: widget.etiqueta,
                  titulo: 'Código',
                  enabled: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(3),
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.dataDeEntradaDoRegistroNoArquivo_00_05,
                  titulo: '(00-05) - Data de entrada do registro no arquivo',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(6),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.tipodeDataOuStatusDePublicacao_06,
                  titulo: '(06) - Tipo de data',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.data1_07_10,
                  titulo: '(07-10) - Primeira data',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: widget.data2_11_14,
                  titulo: '(11-14) - Segunda data',
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(4),
                  ],
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.lugarDePublicacaoProducaoExecucao_15_17,
                  titulo: '(15-17) - Lugar de publicação',
                  length: 3,
                ),
                const SizedBox(height: 16.0),
                widget.tipoDeMaterial_18_34,
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.idiomaDoTextoDoDocumento_35_37,
                  titulo: '(35-37) - Idioma do texto do documento',
                  length: 3,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.registroModificado_38,
                  titulo: '(38) - Registro modificado',
                  length: 1,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: widget.fonteDeCatalogacao_39,
                  titulo: '(39) - Fonte de catalogação',
                  length: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
