// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';

class TabDetalhesLivroWidget extends StatefulWidget {
  final void Function()? onPressedAtualizar;
  final Widget livroSituacao;
  final TextEditingController etiqueta_020,
      primeiroIndicador_020,
      segundoIndicador_020,
      $a_numeroISBN,
      etiqueta_040,
      primeiroIndicador_040,
      segundoIndicador_040,
      $a_codigoDaAgenciaCatalogadora,
      $b_idiomaCatalogacao,
      etiqueta_080,
      primeiroIndicador_080,
      segundoIndicador_080,
      $a_numeroDeClassificacao,
      etiqueta_100,
      primeiroIndicador_100,
      segundoIndicador_100,
      $a_nomePessoal,
      $c_titulosEOutrasPalavrasAssociadasAoNome,
      $d_datasAssociadasAoNome,
      etiqueta_111,
      primeiroIndicador_111,
      segundoIndicador_111,
      $a_nomeDoEventoOuLugar,
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
      etiqueta_856,
      primeiroIndicador_856,
      segundoIndicador_856,
      $a_nomeDoServidor,
      $u_URI;

  const TabDetalhesLivroWidget({
    super.key,
    required this.livroSituacao,
    required this.etiqueta_020,
    required this.primeiroIndicador_020,
    required this.segundoIndicador_020,
    required this.$a_numeroISBN,
    required this.etiqueta_040,
    required this.primeiroIndicador_040,
    required this.segundoIndicador_040,
    required this.$a_codigoDaAgenciaCatalogadora,
    required this.$b_idiomaCatalogacao,
    required this.etiqueta_080,
    required this.primeiroIndicador_080,
    required this.segundoIndicador_080,
    required this.$a_numeroDeClassificacao,
    required this.etiqueta_100,
    required this.primeiroIndicador_100,
    required this.segundoIndicador_100,
    required this.$a_nomePessoal,
    required this.$c_titulosEOutrasPalavrasAssociadasAoNome,
    required this.$d_datasAssociadasAoNome,
    required this.etiqueta_111,
    required this.primeiroIndicador_111,
    required this.segundoIndicador_111,
    required this.$a_nomeDoEventoOuLugar,
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
    required this.etiqueta_856,
    required this.primeiroIndicador_856,
    required this.segundoIndicador_856,
    required this.$a_nomeDoServidor,
    required this.$u_URI, 
    this.onPressedAtualizar,
  });

  @override
  State<TabDetalhesLivroWidget> createState() => _TabDetalhesLivroWidgetState();
}
class _TabDetalhesLivroWidgetState extends State<TabDetalhesLivroWidget> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      primary: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.livroSituacao,
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(020)  Código ISBN',
              controller: widget.etiqueta_020,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(020)  1º indicador ISBN',
              controller: widget.primeiroIndicador_020,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(020)  2º indicador ISBN',
              controller: widget.segundoIndicador_020,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(020)  \$a - Número ISBN',
              controller: widget.$a_numeroISBN,
              length: 13,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(040)  Código Fonte de catalogação',
              controller: widget.etiqueta_040,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  1º indicador fonte de catalogação',
              controller: widget.primeiroIndicador_040,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  2º indicador fonte de catalogação',
              controller: widget.segundoIndicador_040,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  \$a - Código da agência catalogadora',
              controller: widget.$a_codigoDaAgenciaCatalogadora,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(040)  \$b - Idioma catalogação',
              controller: widget.$b_idiomaCatalogacao,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(080)  Código Número de classificação decimal universal',
              controller: widget.etiqueta_080,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(080)  1º indicador número de classificação decimal universal',
              controller: widget.primeiroIndicador_080,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(080)  2º indicador número de classificação decimal universal',
              controller: widget.segundoIndicador_080,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(080)  \$a - Número de classificação universal',
              controller: widget.$a_numeroDeClassificacao,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(100)  Código Nome pessoal',
              controller: widget.etiqueta_100,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  1º indicador nome pessoal',
              controller: widget.primeiroIndicador_100,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  2º indicador nome pessoal',
              controller: widget.segundoIndicador_100,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$a - Nome pessoal',
              controller: widget.$a_nomePessoal,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$c - Títulos e outras palavras associadas ao nome',
              controller: widget.$c_titulosEOutrasPalavrasAssociadasAoNome,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(100)  \$d - Datas associadas ao nome',
              controller: widget.$d_datasAssociadasAoNome,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(111)  Código Evento',
              controller: widget.etiqueta_111,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(111)  1º indicador Evento',
              controller: widget.primeiroIndicador_111,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(111)  2º indicador Evento',
              controller: widget.segundoIndicador_111,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(111)  \$a - Nome do evento ou lugar',
              controller: widget.$a_nomeDoEventoOuLugar,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(245)  Código Título principal',
              controller: widget.etiqueta_245,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  1º indicador título principal',
              controller: widget.primeiroIndicador_245,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  2º indicador título principal',
              controller: widget.segundoIndicador_245,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  \$a - Título principal',
              controller: widget.$a_tituloPrincipal,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  \$b - Subtítulo',
              controller: widget.$b_subtitulo,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(245)  \$c - Indicação de responsabilidade',
              controller: widget.$c_indicacaoDeResponsabilidade,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(260)  Código Imprenta',
              controller: widget.etiqueta_260,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  1º indicador imprenta',
              controller: widget.primeiroIndicador_260,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  2º indicador imprenta',
              controller: widget.segundoIndicador_260,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  \$a - Lugar de publicação',
              controller: widget.$a_lugarDePublicacao,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  \$b - Nome do editor',
              controller: widget.$b_nomeDoEditor,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(260)  \$c - Data de publicação',
              controller: widget.$c_dataDePublicacao,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(300)  Código Descrição física',
              controller: widget.etiqueta_300,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  1º indicador descrição física',
              controller: widget.primeiroIndicador_300,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  2º indicador descrição física',
              controller: widget.segundoIndicador_300,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  \$a - Extensão',
              controller: widget.$a_extensao,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(300)  \$c - Dimensões',
              controller: widget.$c_dimensoes,
            ),
            const SizedBox(height: 16.0),
            TextFormFieldWidget(
              titulo: '(856)  Código localização e acesso eletrônico',
              controller: widget.etiqueta_856,
              inputFormatters: [
                LengthLimitingTextInputFormatter(3),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  1º indicador localização e acesso eletrônico',
              controller: widget.primeiroIndicador_856,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  2º indicador localização e acesso eletrônico',
              controller: widget.segundoIndicador_856,
              length: 1,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  \$a - Nome do servidor',
              controller: widget.$a_nomeDoServidor,
            ),
            const SizedBox(height: 16.0),
            CustomTextFormFieldWidget(
              titulo: '(856)  \$u - Identificador uniforme de recurso - URI (R)',
              controller: widget.$u_URI,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // BOTÂO ATUALIZAR
                Flexible(
                  child: CustomElevatedButtonWidget(
                    titulo: 'Atualizar',
                    cor: ClassAppColors.verde,
                    icone: Icons.update_rounded,
                    onPressed: widget.onPressedAtualizar,
                  ),
                ),
                const SizedBox(width: 16.0),
                // BOTÂO CANCELAR
                Flexible(
                  child: CustomElevatedButtonWidget(
                    titulo: 'Cancelar',
                    cor: ClassAppColors.vermelho,
                    icone: Icons.cancel_rounded,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
