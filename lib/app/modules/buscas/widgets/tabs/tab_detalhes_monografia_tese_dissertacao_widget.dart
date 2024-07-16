// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class TabDetalhesMonografiaTeseDissertacaoWidget extends StatelessWidget {
  final void Function()? onPressedAtualizar;
  final TextEditingController etiqueta_100,
      primeiroIndicador_100,
      segundoIndicador_100,
      $a_nomePessoal,
      $c_titulosEOutrasPalavrasAssociadasAoNome,
      $d_datasAssociadasAoNome,
      etiqueta_245,
      primeiroIndicador_245,
      segundoIndicador_245,
      $a_tituloPrincipal,
      $b_subtitulo,
      $c_indicacaoDeResponsabilidade,
      etiqueta_260,
      primeiroIndicador_260,
      segundoIndicador_260,
      $a_lugarDePublicacao,
      $b_nomeDoEditor,
      $c_dataDePublicacao,
      etiqueta_300,
      primeiroIndicador_300,
      segundoIndicador_300,
      $a_extensao,
      $c_dimensoes,
      etiqueta_500,
      primeiroIndicador_500,
      segundoIndicador_500,
      $a_notaGeral,
      etiqueta_502,
      primeiroIndicador_502,
      segundoIndicador_502,
      $a_notaDeDissertacaoOuTese,
      etiqueta_700,
      primeiroIndicador_700,
      segundoIndicador_700,
      $a_nomePessoalSecundario,
      etiqueta_856,
      primeiroIndicador_856,
      segundoIndicador_856,
      $a_nomeDoServidor,
      $u_URI;

  const TabDetalhesMonografiaTeseDissertacaoWidget({
    super.key,
    this.onPressedAtualizar,
    required this.etiqueta_100,
    required this.primeiroIndicador_100,
    required this.segundoIndicador_100,
    required this.$a_nomePessoal,
    required this.$c_titulosEOutrasPalavrasAssociadasAoNome,
    required this.$d_datasAssociadasAoNome,
    required this.etiqueta_245,
    required this.primeiroIndicador_245,
    required this.segundoIndicador_245,
    required this.$a_tituloPrincipal,
    required this.$b_subtitulo,
    required this.$c_indicacaoDeResponsabilidade,
    required this.etiqueta_260,
    required this.primeiroIndicador_260,
    required this.segundoIndicador_260,
    required this.$a_lugarDePublicacao,
    required this.$b_nomeDoEditor,
    required this.$c_dataDePublicacao,
    required this.etiqueta_300,
    required this.primeiroIndicador_300,
    required this.segundoIndicador_300,
    required this.$a_extensao,
    required this.$c_dimensoes,
    required this.etiqueta_500,
    required this.primeiroIndicador_500,
    required this.segundoIndicador_500,
    required this.$a_notaGeral,
    required this.etiqueta_502,
    required this.primeiroIndicador_502,
    required this.segundoIndicador_502,
    required this.$a_notaDeDissertacaoOuTese,
    required this.etiqueta_700,
    required this.primeiroIndicador_700,
    required this.segundoIndicador_700,
    required this.$a_nomePessoalSecundario,
    required this.etiqueta_856,
    required this.primeiroIndicador_856,
    required this.segundoIndicador_856,
    required this.$a_nomeDoServidor,
    required this.$u_URI
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      primary: false,
      padding: const EdgeInsets.all(4.0),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormFieldWidget(
              titulo: '(100)  Código nome pessoal: ',
              controller: etiqueta_100,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  1º indicador nome pessoal: ',
              controller: primeiroIndicador_100,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  2º indicador nome pessoal: ',
              controller: segundoIndicador_100,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$a - Nome pessoal: ',
              controller: $a_nomePessoal,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$c - Títulos e outras palavras associadas ao nome: ',
              controller: $c_titulosEOutrasPalavrasAssociadasAoNome,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$d - Datas associadas ao nome: ',
              controller: $d_datasAssociadasAoNome,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(245)  Código titulo principal: ',
              controller: etiqueta_245,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  1º indicador titulo principal: ',
              controller: primeiroIndicador_245,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  2º indicador titulo principal: ',
              controller: segundoIndicador_245,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  \$a - Título principal: ',
              controller: $a_tituloPrincipal,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  \$b - Subtitulo: ',
              controller: $b_subtitulo,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  \$c - Indicação de responsabilidade: ',
              controller: $c_indicacaoDeResponsabilidade,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(260)  Código imprenta: ',
              controller: etiqueta_260,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  1º indicador imprenta: ',
              controller: primeiroIndicador_260,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  2º indicador imprenta: ',
              controller: segundoIndicador_260,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  \$a - Lugar publicacão: ',
              controller: $a_lugarDePublicacao,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  \$b - Nome do editor: ',
              controller: $b_nomeDoEditor,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  \$c - Data de publicação: ',
              controller: $c_dataDePublicacao,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(300)  Código descrição física: ',
              controller: etiqueta_300,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  1º indicador descrição física: ',
              controller: primeiroIndicador_300,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  2º indicador descrição física: ',
              controller: segundoIndicador_300,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  \$a - Extensão: ',
              controller: $a_extensao,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  \$c - Dimensões: ',
              controller: $c_dimensoes,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(500)  Código nota geral: ',
              controller: etiqueta_500,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(500)  1º indicador nota geral: ',
              controller: primeiroIndicador_500,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(500)  2º indicador nota geral: ',
              controller: segundoIndicador_500,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(500)  \$a - Nota geral: ',
              controller: $a_notaGeral,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(502)  Código nota de dissertação ou tese: ',
              controller: etiqueta_502,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(502)  1º indicador nota de dissertação ou tese: ',
              controller: primeiroIndicador_502,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(502)  2º indicador nota de dissertação ou tese: ',
              controller: segundoIndicador_502,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(502)  \$a - Nota de dissertação ou tese: ',
              controller: $a_notaDeDissertacaoOuTese,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(700)  Código nome pessoal secundário: ',
              controller: etiqueta_700,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(700)  1º indicador nome pessoal secundário: ',
              controller: primeiroIndicador_700,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(700)  2º indicador nome pessoal secundário: ',
              controller: segundoIndicador_700,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(700)  \$a - Nome pessoal - Secundário: ',
              controller: $a_nomePessoalSecundario,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(856)  Código localização e acesso eletrônico',
              controller: etiqueta_856,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  1º indicador localização e acesso eletrônico',
              controller: primeiroIndicador_856,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  2º indicador localização e acesso eletrônico',
              controller: segundoIndicador_856,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  \$a - Nome do servidor',
              controller: $a_nomeDoServidor,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  \$u - Identificador uniforme de recurso - URI (R)',
              controller: $u_URI,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //BOTÂO ATUALIZAR
                CustomElevatedButtonWidget(
                  titulo: 'Atualizar',
                  icone: Icons.update_rounded,
                  cor: ClassAppColors.verde,
                  onPressed: onPressedAtualizar,
                ),
                const SizedBox(width: 16.0),
                //BOTÂO CANCELAR
                CustomElevatedButtonWidget(
                  titulo: 'Cancelar',
                  icone: Icons.cancel_rounded,
                  cor: ClassAppColors.vermelho,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
