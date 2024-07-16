// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class TabDetalhesAutoridadeWidget extends StatelessWidget {
  final void Function()? onPressedAtualizar;
  final TextEditingController etiqueta_040,
      primeiroIndicador_040,
      segundoIndicador_040,
      $a_agenciaDeCatalogacaoOriginal,
      $b_idiomaDaCatalogacao,
      $c_agenciaDeTranscricao,
      $d_agenciaModificadora,
      etiqueta_100,
      primeiroIndicador_100,
      segundoIndicador_100,
      $a_nomePessoal_100,
      $d_datasAssociadasAoNome_100,
      etiqueta_400,
      primeiroIndicador_400,
      segundoIndicador_400,
      $a_nomePessoal_400,
      $d_datasAssociadasAoNome_400,
      etiqueta_667,
      primeiroIndicador_667,
      segundoIndicador_667,
      $a_notaGeralNaoPublica,
      etiqueta_670,
      primeiroIndicador_670,
      segundoIndicador_670,
      $a_citacaoDeFonte,
      $u_URI;

  const TabDetalhesAutoridadeWidget({
    super.key,
    this.onPressedAtualizar,
    required this.etiqueta_040,
    required this.primeiroIndicador_040,
    required this.segundoIndicador_040,
    required this.$a_agenciaDeCatalogacaoOriginal,
    required this.$b_idiomaDaCatalogacao,
    required this.$c_agenciaDeTranscricao,
    required this.$d_agenciaModificadora,
    required this.etiqueta_100,
    required this.primeiroIndicador_100,
    required this.segundoIndicador_100,
    required this.$a_nomePessoal_100,
    required this.$d_datasAssociadasAoNome_100,
    required this.etiqueta_400,
    required this.primeiroIndicador_400,
    required this.segundoIndicador_400,
    required this.$a_nomePessoal_400,
    required this.$d_datasAssociadasAoNome_400,
    required this.etiqueta_667,
    required this.primeiroIndicador_667,
    required this.segundoIndicador_667,
    required this.$a_notaGeralNaoPublica,
    required this.etiqueta_670,
    required this.primeiroIndicador_670,
    required this.segundoIndicador_670,
    required this.$a_citacaoDeFonte,
    required this.$u_URI,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      primary: false,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 32),
        child: Column(
          children: [
            CustomTextFormFieldWidget(
              titulo: '(040)  Código Fonte de catalogação',
              controller: etiqueta_040,
              length: 3,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  1º indicador fonte de catalogação',
              controller: primeiroIndicador_040,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  2º indicador fonte de catalogação',
              controller: segundoIndicador_040,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  \$a - Agência de catalogação original',
              controller: $a_agenciaDeCatalogacaoOriginal,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  \$b - Idioma da catalogação',
              controller: $b_idiomaDaCatalogacao,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  Código Nome pessoal',
              controller: etiqueta_100,
              length: 3,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  1º indicador nome pessoal',
              controller: primeiroIndicador_100,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  2º indicador nome pessoal',
              controller: segundoIndicador_100,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$a - Nome pessoal',
              controller: $a_nomePessoal_100,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$d - Datas associadas ao nome',
              controller: $d_datasAssociadasAoNome_100,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(400)  Código Nome pessoal - Remissiva (Ver)',
              controller: etiqueta_400,
              length: 3,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(400)  1º indicador nome pessoal - Remissiva (Ver)',
              controller: primeiroIndicador_400,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(400)  2º indicador nome pessoal - Remissiva (Ver)',
              controller: segundoIndicador_400,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(400)  \$a - Nome pessoal - Remissiva (Ver)',
              controller: $a_nomePessoal_400,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(400)  \$d - Datas associadas ao nome - Remissiva (Ver)',
              controller: $d_datasAssociadasAoNome_400,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(667)  Código Nota geral não pública',
              controller: etiqueta_667,
              length: 3,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(667)  1º Indicador nota geral não pública',
              controller: primeiroIndicador_667,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(667)  2º Indicador nota geral não pública',
              controller: segundoIndicador_667,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(667)  \$a - Nota geral não pública',
              controller: $a_notaGeralNaoPublica,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(670)  Código Dados de fontes encontrados',
              controller: etiqueta_670,
              length: 3,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(670)  1º Indicador dados de fontes encontrados',
              controller: primeiroIndicador_670,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(670)  2º Indicador dados de fontes encontrados',
              controller: segundoIndicador_670,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(670)  \$a - Citação da fonte',
              controller: $a_citacaoDeFonte,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(670)  \$u - URI',
              controller: $u_URI,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // BOTÂO ATUALIZAR
                CustomElevatedButtonWidget(
                  titulo: 'Atualizar',
                  cor: ClassAppColors.verde,
                  icone: Icons.update_rounded,
                  onPressed: onPressedAtualizar,
                ),
                const SizedBox(width: 16.0),
                // BOTÂO CANCELAR
                CustomElevatedButtonWidget(
                  titulo: 'Cancelar',
                  cor: ClassAppColors.vermelho,
                  icone: Icons.cancel_rounded,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
