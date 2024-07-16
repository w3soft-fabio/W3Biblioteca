import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_estilos_texto.dart';
import 'package:w3biblioteca/app/modules/entrada/models/class_nivel_bibliografico_data.dart';
import 'package:w3biblioteca/app/modules/entrada/models/class_tipo_de_registro_data.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/entrada_livro_page.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/entrada_monografia_tese_dissertacao_page.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_dropdown_form_field_widget.dart';

class EntradaPage extends StatefulWidget {
  const EntradaPage({super.key});

  @override
  State<EntradaPage> createState() => _EntradaPageState();
}

class _EntradaPageState extends State<EntradaPage> {
  ClassTipoDeRegistroData? tipoDeRegistro;
  ClassNivelBibliograficoData? nivelBibliografico;

  List<ClassTipoDeRegistroData> tiposDeRegistros = [
    ClassTipoDeRegistroData(nome: "Livro"),
    ClassTipoDeRegistroData(nome: "Monografia, tese e dissertação"),
  ];

  List<ClassNivelBibliograficoData> niveisBibliograficos = [
    ClassNivelBibliograficoData(nome: "Monográfico"),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Cadastro de registros'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.13, vertical: 32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Selecione um tipo de registro para cadastrar',
                style: ClassAppEstilosTexto.preto16w400Montserrat,
              ),
              const SizedBox(height: 16.0),
              // DROPDOWN TIPO DE REGISTRO
              CustomDropdownFormFieldWidget(
                value: tipoDeRegistro,
                onChanged: (Object? value) {
                  setState(() {
                    tipoDeRegistro = value as ClassTipoDeRegistroData?;
                  });
                },
                items: tiposDeRegistros.map<DropdownMenuItem<ClassTipoDeRegistroData>>(
                  (ClassTipoDeRegistroData value) => DropdownMenuItem<ClassTipoDeRegistroData>(
                      value: value,
                      child: Text(value.nome, overflow: TextOverflow.ellipsis),
                    ),
                ).toList(),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Selecione o nível bibliográfico',
                style: ClassAppEstilosTexto.preto16w400Montserrat,
              ),
              const SizedBox(height: 16.0),
              // DROPDOWN NIVEL BIBLIOGRAFICO
              CustomDropdownFormFieldWidget(
                value: nivelBibliografico,
                onChanged: (Object? value) {
                  setState(() {
                    nivelBibliografico = value as ClassNivelBibliograficoData?;
                  });
                },
                items: niveisBibliograficos.map<DropdownMenuItem<ClassNivelBibliograficoData>>(
                  (ClassNivelBibliograficoData value) => DropdownMenuItem<ClassNivelBibliograficoData>(
                      value: value,
                      child: Text(value.nome, overflow: TextOverflow.ellipsis),
                  ),
                ).toList(),
              ),
              const SizedBox(height: 16.0),
              // BOTÃO CONTINUAR
              ElevatedButton.icon(
                onPressed: () {
                  if (tipoDeRegistro?.nome == null ||  nivelBibliografico?.nome == null) {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Atenção"),
                        content: const Text(
                            "É necessário selecionar um tipo de registro e um nível bibliográfico!"),
                        actions: <Widget>[
                          ElevatedButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Ok"),
                          ),
                        ],
                      ),
                    );
                  }
                  if (tipoDeRegistro?.nome == "Livro" &&  nivelBibliografico?.nome == "Monográfico") {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EntradaLivroPage(),
                      ),
                    );
                  }
                  if (tipoDeRegistro?.nome == "Monografia, tese e dissertação" && nivelBibliografico?.nome == "Monográfico") {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const EntradaTesePage(),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.check_circle_outline_rounded),
                label: Text(
                  'Continuar',
                  style: ClassAppEstilosTexto.branco16w400Montserrat,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ClassAppColors.verde,
                  fixedSize: const Size(145, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
