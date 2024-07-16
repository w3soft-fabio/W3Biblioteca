import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/importacao/importar_codigo_page.dart';
import 'package:w3biblioteca/app/modules/importacao/models/class_importacao_data.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_alert_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_dropdown_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';

class SelecionarCodigoMarcPage extends StatefulWidget {
  const SelecionarCodigoMarcPage({super.key});

  @override
  State<SelecionarCodigoMarcPage> createState() =>
      _SelecionarCodigoMarcPageState();
}

class _SelecionarCodigoMarcPageState extends State<SelecionarCodigoMarcPage> {
  ClassImportacaoData? formatoImportacao;

  List<ClassImportacaoData> formatosImportacao = [
    ClassImportacaoData(nome: "Formato MARC Bibliográfico"),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Importação'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 32.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Selecione um tipo de formato',
                style: ClassAppEstilosTexto.preto16w400Montserrat,
              ),
              const SizedBox(height: 16.0),
              CustomDropdownFormFieldWidget<ClassImportacaoData>(
                value: formatoImportacao,
                onChanged: (Object? value) {
                  setState(() {
                    formatoImportacao = value as ClassImportacaoData?;
                  });
                },
                items: formatosImportacao
                    .map<DropdownMenuItem<ClassImportacaoData>>(
                  (ClassImportacaoData value) {
                    return DropdownMenuItem<ClassImportacaoData>(
                      value: value,
                      child: Text(value.nome),
                    );
                  },
                ).toList(),
              ),
              const SizedBox(height: 16.0),
              CustomElevatedButtonWidget(titulo: 'Continuar', 
              icone: Icons.check_circle_outline_rounded,
              cor: ClassAppColors.verde,
              onPressed: () {
                if (formatoImportacao?.nome == null) {
                    CustomAlertWidget.showAlertError(
                      context, titulo: 'Atenção', content: 'É necessário selecionar um tipo de formato!'
                    );
                  }
                  if (formatoImportacao?.nome == "Formato MARC Bibliográfico") {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ImportarCodigoPage(),
                      ),
                    );
                  }
              },
              )
            ],
          ),
        ),
      ),
    );
  }
}
