import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/importacao/controllers/importacao_controller.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';

class ImportarCodigoPage extends StatefulWidget {
  const ImportarCodigoPage({super.key});

  @override
  State<ImportarCodigoPage> createState() => _ImportarCodigoPageState();
}

class _ImportarCodigoPageState extends State<ImportarCodigoPage> {
  @override
  Widget build(BuildContext context) {
    var importacaoController = context.watch<ImportacaoController>();

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Importar código MARC'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 32.0),
        child: SingleChildScrollView(
          child: Form(
            key: importacaoController.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Botão informação ao lado do campo
                    IconButton(
                      icon: const Icon(Icons.question_mark_rounded),
                      onPressed: () {
                        showDialog(
                          context: context, 
                          builder: (dialogContext) {
                            return AlertDialog(
                              title: Text('Atenção', style: ClassAppEstilosTexto.vermelho16BoldMontserrat),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Para realizar uma importação de sucesso siga os passos abaixo: ', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  const SizedBox(height: 16),
                                  Text('1º - Copie e cole o código MARC do registro.\n', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  Text('2º - Verifique se o campo  LIDER(000) está presente, se não encontrar ele adicione na primeira linha do código colado.', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  Text('       Ex: 000 01190nam a2200217 a 4500', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  const SizedBox(height: 16),
                                  Text('3º - A estrutura do código MARC para campos com indicadores e subcampos deve seguir o padrão: [Campo] [1º Indicador][2º Indicador] [Subcampos].', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  Text('       Ex: 100 1_ \$a Silva, Hélio \$d 1904-1995\n             245 10 \$a 1964 : |b golpe ou contragolpe? / \$c Helio Silva ; com a colaboração de Maria Cecilia Ribas Carneiro. \$h [texto]', textAlign: TextAlign.start, style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  const SizedBox(height: 16),
                                  Text('4º - Verifique se existe campos repetidos, se houver coloque-os um abaixo do outro.', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  Text('       Ex: 650 14 |a Política e governo |z Brasil\n           650 14 |a Revolução (1964) |z Brasil', textAlign: TextAlign.center, style: ClassAppEstilosTexto.preto16w400Montserrat),
                                  const SizedBox(height: 16),
                                  Text('5º - Clique no botão de importar', style: ClassAppEstilosTexto.preto16w400Montserrat),
                                ],
                              ),
                              actions: [
                                CustomElevatedButtonWidget(titulo: 'Ok', icone: Icons.check_circle_rounded, onPressed: () => Navigator.pop(context)),
                              ],
                            );
                          }
                        );
                      },
                    ),
                    Flexible(
                      child: CustomTextFormFieldWidget(
                        controller: importacaoController.textImportacaoController,
                        validator: true,
                        titulo: 'MARC21',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                importacaoController.isLoading ? const Center(child: CircularProgressIndicator()) : CustomElevatedButtonWidget(
                  titulo: 'Importar',
                  cor: ClassAppColors.verde,
                  icone: Icons.import_contacts_rounded,
                  onPressed: () async {
                    if (importacaoController.formKey.currentState!.validate()) {
                      // ENVIA TEXTO DO CONTROLADOR
                      await context.read<ImportacaoController>().setImportacao(
                        textoImportacao: importacaoController.textImportacaoController.text.trim(),
                      ).then((response) {
                        if(response.codigoRetorno.toString() == "200"){
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha na importação!', largura: size.width * 0.37, altura: size.height * 0.45)
                          );
                        }
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
