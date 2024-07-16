import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/modules/autoridade/controllers/autoridade_controller.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/panels/autoridades/campos_fixos_autoridade_panel.dart';
import 'package:w3biblioteca/app/shared/panels/autoridades/dados_de_fontes_encontrados_panel.dart';
import 'package:w3biblioteca/app/shared/panels/autoridades/fonte_catalogadora_autoridade_panel.dart';
import 'package:w3biblioteca/app/shared/panels/autoridades/lider_autoridade_panel.dart';
import 'package:w3biblioteca/app/shared/panels/autoridades/nome_pessoal_autoridade_panel.dart';
import 'package:w3biblioteca/app/shared/panels/autoridades/nota_geral_nao_publica_autoridade_panel.dart';
import 'package:w3biblioteca/app/shared/panels/autoridades/remissiva_ver_nome_pessoal_autoridade_panel.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';

class AutoridadePage extends StatefulWidget {
  const AutoridadePage({super.key});

  @override
  State<AutoridadePage> createState() => _AutoridadePageState();
}

class _AutoridadePageState extends State<AutoridadePage> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AutoridadeController>().getCodigoAutoridade();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // INSTÂNCIA DO CONTROLLER - ASSISTE TODAS AS MUDANÇAS
    var autoridadeController = context.watch<AutoridadeController>();
    
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Cadastro Autoridades'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.15, vertical: 32.0),
        child: SingleChildScrollView(
          primary: false,
          child: Form(
            key: autoridadeController.formKey,
            child: Column(
              children: [
                // textfield generico usado em varias paginas
                LiderAutoridadePanel(
                  etiqueta: autoridadeController.etiquetaLiderAutoridadeController..text = '000',
                  tamanhoLogicoDoRegistro_00_04: autoridadeController.tamanhoLogicoDoRegistro_00_04LiderAutoridadeController,
                  statusDoRegistro_05: autoridadeController.statusDoRegistro_05LiderAutoridadeController,
                  tipoDeRegistro_06: autoridadeController.tipoDeRegistro_06LiderAutoridadeController,
                  posicaoDosCaracteresIndefinida_07_08: autoridadeController.posicaoDosCaracteresIndefinida_07_08LiderAutoridadeController,
                  esquemaDeCodificacaoDeCaracteres_09: autoridadeController.esquemaDeCodificacaoDeCaracteres_09LiderAutoridadeController,
                  contagemDeIndicadores_10: autoridadeController.contagemDeIndicadores_10LiderAutoridadeController,
                  contagemDeCodigosDeSubcampos_11: autoridadeController.contagemDeCodigosDeSubcampos_11LiderAutoridadeController,
                  enderecoDosDadosNaBase_12_16: autoridadeController.enderecoDosDadosNaBase_12_16LiderAutoridadeController,
                  nivelDeCatalogacao_17: autoridadeController.nivelDeCatalogacao_17LiderAutoridadeController,
                  politicaDePontuacao_18: autoridadeController.politicaDePontuacao_18LiderAutoridadeController,
                  indefinido_19: autoridadeController.indefinido_19LiderAutoridadeController,
                  comprimentoDaParteDeComprimentoDeCampo_20: autoridadeController.comprimentoDaParteDeComprimentoDeCampo_20LiderAutoridadeController,
                  comprimentoDaParteDaPosicaoDoCaractereInicial_21: autoridadeController.comprimentoDaParteDaPosicaoDoCaractereInicial_21LiderAutoridadeController,
                  comprimentoDaParteDefinidaPelaImplementacao_22: autoridadeController.comprimentoDaParteDefinidaPelaImplementacao_22LiderAutoridadeController,
                  indefinido_23: autoridadeController.indefinido_23LiderAutoridadeController,
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  titulo: '(001) - Número de controle',
                  controller: autoridadeController.numeroDeControleAutoridadeController,
                  enabled: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: true,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  titulo: '(003) - Identificador do número de controle',
                  controller: autoridadeController.identificadorDoNumeroDeControleAutoridadeController,
                  validator: true,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  titulo: '(005) - Data e hora da última atualização',
                  controller: autoridadeController.dataEHoraDaUltimaAtualizacaoAutoridadeController..text = DateFormat("yyyy-MM-ddTHH:mm:ss").parse(DateTime.now().toIso8601String()).toString().replaceAll("-", "").replaceAll(":", "").replaceAll(" ", ""),
                  length: 18,
                  enabled: false,
                ),
                const SizedBox(height: 16.0),
                CamposFixosAutoridadePanel(
                  etiqueta_008: autoridadeController.etiqueta_008CamposFixosAutoridadeController..text = '008', 
                  dataInseridaNoArquivo_00_05: autoridadeController.dataInseridaNoArquivo_00_05CamposFixosAutoridadeController, 
                  subdivisaoGeograficaDiretaOuIndireta_06: autoridadeController.subdivisaoGeograficaDiretaOuIndireta_06CamposFixosAutoridadeController, 
                  esquemaDeLatinizacao_07: autoridadeController.esquemaDeLatinizacao_07CamposFixosAutoridadeController, 
                  idiomaDoCatalogo_08: autoridadeController.idiomaDoCatalogo_08CamposFixosAutoridadeController, 
                  tipoDeRegistro_09: autoridadeController.tipoDeRegistro_09CamposFixosAutoridadeController, 
                  regrasDescritivasDeCatalogacao_10: autoridadeController.regrasDescritivasDeCatalogacao_10CamposFixosAutoridadeController, 
                  sistemaDeCabecalhoDeAssunto_11: autoridadeController.sistemaDeCabecalhoDeAssunto_11CamposFixosAutoridadeController, 
                  tipoDeSerie_12: autoridadeController.tipoDeSerie_12CamposFixosAutoridadeController, 
                  serieNumeradaOuNaoNumerada_13: autoridadeController.serieNumeradaOuNaoNumerada_13CamposFixosAutoridadeController, 
                  cabecalhoAplicadoEntradaPrincipalOuSecundaria_14: autoridadeController.cabecalhoAplicadoEntradaPrincipalOuSecundaria_14CamposFixosAutoridadeController, 
                  cabecalhoAplicadoEntradaDeAssunto_15: autoridadeController.cabecalhoAplicadoEntradaDeAssunto_15CamposFixosAutoridadeController, 
                  seriePrincipalESerieSecundaria_16: autoridadeController.seriePrincipalESerieSecundaria_16CamposFixosAutoridadeController, 
                  tipoDeSubdivisaoDeAssunto_17: autoridadeController.tipoDeSubdivisaoDeAssunto_17CamposFixosAutoridadeController, 
                  posicoesDeCaracteresIndifinidas_18_27: autoridadeController.posicoesDeCaracteresIndifinidas_18_27CamposFixosAutoridadeController, 
                  tipoDeAgenciaGovernamental_28: autoridadeController.tipoDeAgenciaGovernamental_28CamposFixosAutoridadeController, 
                  avaliacaoDeReferencias_29: autoridadeController.avaliacaoDeReferencias_29CamposFixosAutoridadeController, 
                  posicaoDeCaractereIndefinido_30: autoridadeController.posicaoDeCaractereIndefinido_30CamposFixosAutoridadeController, 
                  processoDeAtualizacaoDoRegistro_31: autoridadeController.processoDeAtualizacaoDoRegistro_31CamposFixosAutoridadeController, 
                  nomePessoalNaoDiferenciado_32: autoridadeController.nomePessoalNaoDiferenciado_32CamposFixosAutoridadeController, 
                  nivelDeAutorizacao_33: autoridadeController.nivelDeAutorizacao_33CamposFixosAutoridadeController, 
                  posicoesDeCaracteresIndefinidas_34_37: autoridadeController.posicoesDeCaracteresIndefinidas_34_37CamposFixosAutoridadeController, 
                  registroModificado_38: autoridadeController.registroModificado_38CamposFixosAutoridadeController, 
                  fonteDeCatalogacao_39: autoridadeController.fonteDeCatalogacao_39CamposFixosAutoridadeController,
                ),
                const SizedBox(height: 16.0),
                 FonteCatalogadoraAutoridadePanel(
                  etiqueta: autoridadeController.etiquetaFonteCatalogadoraAutoridadeController..text = '040', 
                  primeiroIndicador: autoridadeController.primeiroIndicadorFonteCatalogadoraAutoridadeController, 
                  segundoIndicador: autoridadeController.segundoIndicadorFonteCatalogadoraAutoridadeController, 
                  $a_agenciaDeCatalogacaoOriginal: autoridadeController.$a_agenciaDeCatalogacaoOriginalFonteCatalogadoraAutoridadeController, 
                  $b_idiomaDaCatalogacao: autoridadeController.$b_idiomaDaCatalogacaoFonteCatalogadoraAutoridadeController, 
                  $c_agenciaDeTrancricao: autoridadeController.$c_agenciaDeTrancricaoFonteCatalogadoraAutoridadeController, 
                  $d_agenciaModificadora: autoridadeController.$d_agenciaModificadoraFonteCatalogadoraAutoridadeController, 
                  $e_convencoesDeDescricao: autoridadeController.$e_convencoesDeDescricaoFonteCatalogadoraAutoridadeController, 
                  $f_convencoesDeCabecalhoDeAssunto: autoridadeController.$f_convencoesDeCabecalhoDeAssuntoFonteCatalogadoraAutoridadeController, 
                  $6_ligacao: autoridadeController.$6_ligacaoFonteCatalogadoraAutoridadeController, 
                  $8_campoDeLigacaoENumeroDeSequencia: autoridadeController.$8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraAutoridadeController,
                ),
                const SizedBox(height: 16.0),
                NomePessoalAutoridadePanel(
                  etiqueta_100: autoridadeController.etiqueta_100NomePessoalAutoridadeController..text = '100', 
                  primeiroIndicador: autoridadeController.primeiroIndicadorNomePessoalAutoridadeController, 
                  segundoIndicador: autoridadeController.segundoIndicadorNomePessoalAutoridadeController, 
                  $a_nomePessoal: autoridadeController.$a_nomePessoalNomePessoalAutoridadeController, 
                  $b_numeracao: autoridadeController.$b_numeracaoNomePessoalAutoridadeController, 
                  $c_titulosEOutrasPalavrasAssociadasAoNome: autoridadeController.$c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalAutoridadeController, 
                  $d_datasAssociadasAoNome: autoridadeController.$d_datasAssociadasAoNomeNomePessoalAutoridadeController, 
                  $e_termoDeRelacao: autoridadeController.$e_termoDeRelacaoNomePessoalAutoridadeController, 
                  $f_dataDaObra: autoridadeController.$f_dataDaObraNomePessoalAutoridadeController, 
                  $g_informacoesDiversas: autoridadeController.$g_informacoesDiversasNomePessoalAutoridadeController, 
                  $h_meio: autoridadeController.$h_meioNomePessoalAutoridadeController, 
                  $j_qualificadorDeAtribuicao: autoridadeController.$j_qualificadorDeAtribuicaoNomePessoalAutoridadeController, 
                  $k_subcabecalhoDeForma: autoridadeController.$k_subcabecalhoDeFormaNomePessoalAutoridadeController, 
                  $l_idiomaDaObra: autoridadeController.$l_idiomaDaObraNomePessoalAutoridadeController, 
                  $m_meioDeExecucaoParaMusica: autoridadeController.$m_meioDeExecucaoParaMusicaNomePessoalAutoridadeController, 
                  $n_numeroDaSecaoDaObra: autoridadeController.$n_numeroDaSecaoDaObraNomePessoalAutoridadeController, 
                  $o_arranjoMusical: autoridadeController.$o_arranjoMusicalNomePessoalAutoridadeController, 
                  $p_nomeDaSecaoDaObra: autoridadeController.$p_nomeDaSecaoDaObraNomePessoalAutoridadeController, 
                  $q_formaCompletaDoNome: autoridadeController.$q_formaCompletaDoNomeNomePessoalAutoridadeController, 
                  $r_tonalidade: autoridadeController.$r_tonalidadeNomePessoalAutoridadeController, 
                  $s_versao: autoridadeController.$s_versaoNomePessoalAutoridadeController, 
                  $t_tituloDaObra: autoridadeController.$t_tituloDaObraNomePessoalAutoridadeController, 
                  $v_subdivisaoDeForma: autoridadeController.$v_subdivisaoDeFormaNomePessoalAutoridadeController, 
                  $x_subdivisaoGeral: autoridadeController.$x_subdivisaoGeralNomePessoalAutoridadeController, 
                  $y_subdivisaoCronologica: autoridadeController.$y_subdivisaoCronologicaNomePessoalAutoridadeController, 
                  $z_subdivisaoGeografica: autoridadeController.$z_subdivisaoGeograficaNomePessoalAutoridadeController, 
                  $6_ligacao: autoridadeController.$6_ligacaoNomePessoalAutoridadeController, 
                  $7_provenienciaDosDados: autoridadeController.$7_provenienciaDosDadosNomePessoalAutoridadeController, 
                  $8_campoDeLigacaoENumeroDeSequencia: autoridadeController.$8_campoDeLigacaoENumeroDeSequenciaNomePessoalAutoridadeController,
                ),
                const SizedBox(height: 16.0),
                RemissivaVerNomePessoalAutoridadePanel(
                  etiqueta_400: autoridadeController.etiqueta_400RemissivaVerNomePessoal400AutoridadeController..text  ='400', 
                  primeiroIndicador: autoridadeController.primeiroIndicadorRemissivaVerNomePessoal400AutoridadeController, 
                  segundoIndicador: autoridadeController.segundoIndicadorRemissivaVerNomePessoal400AutoridadeController, 
                  $a_nomePessoal: autoridadeController.$a_nomePessoalRemissivaVerNomePessoal400AutoridadeController, 
                  $b_numeracao: autoridadeController.$b_numeracaoRemissivaVerNomePessoal400AutoridadeController, 
                  $c_titulosEOutrasPalavrasAssociadasAoNome: autoridadeController.$c_titulosEOutrasPalavrasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController, 
                  $d_datasAssociadasAoNome: autoridadeController.$d_datasAssociadasAoNomeRemissivaVerNomePessoal400AutoridadeController, 
                  $e_termoDeRelacao: autoridadeController.$e_termoDeRelacaoRemissivaVerNomePessoal400AutoridadeController, 
                  $f_dataDaObra: autoridadeController.$f_dataDaObraRemissivaVerNomePessoal400AutoridadeController, 
                  $g_informacoesDiversas: autoridadeController.$g_informacoesDiversasRemissivaVerNomePessoal400AutoridadeController, 
                  $h_meio: autoridadeController.$h_meioRemissivaVerNomePessoal400AutoridadeController, 
                  $i_informacaoDeRelacionamento: autoridadeController.$i_informacaoDeRelacionamentoRemissivaVerNomePessoal400AutoridadeController, 
                  $j_qualificadorDeAtribuicao: autoridadeController.$j_qualificadorDeAtribuicaoRemissivaVerNomePessoal400AutoridadeController, 
                  $k_subcabecalhoDeForma: autoridadeController.$k_subcabecalhoDeFormaRemissivaVerNomePessoal400AutoridadeController, 
                  $l_idiomaDaObra: autoridadeController.$l_idiomaDaObraRemissivaVerNomePessoal400AutoridadeController, 
                  $m_meioDeExecucaoParaMusica: autoridadeController.$m_meioDeExecucaoParaMusicaRemissivaVerNomePessoal400AutoridadeController, 
                  $n_numeroDaSecaoDaObra: autoridadeController.$n_numeroDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController, 
                  $o_arranjoMusical: autoridadeController.$o_arranjoMusicalRemissivaVerNomePessoal400AutoridadeController, 
                  $p_nomeDaSecaoDaObra: autoridadeController.$p_nomeDaSecaoDaObraRemissivaVerNomePessoal400AutoridadeController, 
                  $q_formaCompletaDoNome: autoridadeController.$q_formaCompletaDoNomeRemissivaVerNomePessoal400AutoridadeController, 
                  $r_tonalidade: autoridadeController.$r_tonalidadeRemissivaVerNomePessoal400AutoridadeController, 
                  $s_versao: autoridadeController.$s_versaoRemissivaVerNomePessoal400AutoridadeController, 
                  $t_tituloDaObra: autoridadeController.$t_tituloDaObraRemissivaVerNomePessoal400AutoridadeController, 
                  $v_subdivisaoDeForma: autoridadeController.$v_subdivisaoDeFormaRemissivaVerNomePessoal400AutoridadeController, 
                  $w_subcampoDeControle: autoridadeController.$w_subcampoDeControleRemissivaVerNomePessoal400AutoridadeController, 
                  $x_subdivisaoGeral: autoridadeController.$x_subdivisaoGeralRemissivaVerNomePessoal400AutoridadeController, 
                  $y_subdivisaoCronologica: autoridadeController.$y_subdivisaoCronologicaRemissivaVerNomePessoal400AutoridadeController,
                  $z_subdivisaoGeografica: autoridadeController.$z_subdivisaoGeograficaRemissivaVerNomePessoal400AutoridadeController, 
                  $4_relaciomaneto: autoridadeController.$4_relaciomanetoRemissivaVerNomePessoal400AutoridadeController, 
                  $5_institutoAQualOCampoSeAplica: autoridadeController.$5_institutoAQualOCampoSeAplicaRemissivaVerNomePessoal400AutoridadeController, 
                  $6_ligacao: autoridadeController.$6_ligacaoRemissivaVerNomePessoal400AutoridadeController, 
                  $8_campoDeLigacaoENumeroDeSequencia: autoridadeController.$8_campoDeLigacaoENumeroDeSequenciaRemissivaVerNomePessoal400AutoridadeController,
                ),
                const SizedBox(height: 16.0),
                NotaGeralNaoPublicaAutoridadePanel(
                etiqueta_667: autoridadeController.etiqueta_667NotaGeralNaoPublicaAutoridadeController..text = '667', 
                primeiroIndicador: autoridadeController.primeiroIndicadorNotaGeralNaoPublicaAutoridadeController, 
                segundoIndicador: autoridadeController.segundoIndicadorNotaGeralNaoPublicaAutoridadeController, 
                $a_notaGeralNaoPublica: autoridadeController.$a_notaGeralNaoPublicaNotaGeralNaoPublicaAutoridadeController, 
                $5_instituicaoAQueCampoSeAplica: autoridadeController.$5_instituicaoAQueCampoSeAplicaNotaGeralNaoPublicaAutoridadeController, 
                $6_ligacao: autoridadeController.$6_ligacaoNotaGeralNaoPublicaAutoridadeController, 
                $8_campoDeLigacaoENumeroDeSequencia: autoridadeController.$8_campoDeLigacaoENumeroDeSequenciaNotaGeralNaoPublicaAutoridadeController,
                ),
                const SizedBox(height: 16.0),
                DadosDeFontesEncontradosPanel(
                  etiqueta_670: autoridadeController.etiqueta_670DadosDeFontesEncontradosAutoridadeController..text = '670', 
                  primeiroIndicador: autoridadeController.primeiroIndicadorDadosDeFontesEncontradosAutoridadeController,
                  segundoIndicador: autoridadeController.segundoIndicadorDadosDeFontesEncontradosAutoridadeController, 
                  $a_citacaoDeFonte: autoridadeController.$a_citacaoDeFonteDadosDeFontesEncontradosAutoridadeController,
                  $b_informacaoEncontrada: autoridadeController.$b_informacaoEncontradaDadosDeFontesEncontradosAutoridadeController, 
                  $u_URI: autoridadeController.$u_URIDadosDeFontesEncontradosAutoridadeController, 
                  $w_numeroDeControleDoRegistroBibliografico: autoridadeController.$w_numeroDeControleDoRegistroBibliograficoDadosDeFontesEncontradosAutoridadeController, 
                  $6_ligacao: autoridadeController.$6_ligacaoDadosDeFontesEncontradosAutoridadeController, 
                  $8_campoDeLigacaoENumeroDeSequencia: autoridadeController.$8_campoDeLigacaoENumeroDeSequenciaDadosDeFontesEncontradosAutoridadeController,
                ),
                const SizedBox(height: 16.0),
                autoridadeController.isLoading ? const Center(child: CircularProgressIndicator()) : Align(
                  alignment: Alignment.bottomRight,
                  child: CustomElevatedButtonWidget(
                    titulo: 'Salvar',
                    cor: ClassAppColors.verde,
                    icone: Icons.save,
                    onPressed: () async {
                      await context.read<AutoridadeController>().setAutoridades().then(
                        (response) {
                          if (response.codigoRetorno.toString() == "201") {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                            context.read<AutoridadeController>().limparControllersSetAutoridade();
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao salvar autoridade!', largura: size.width * 0.37, altura: size.height * 0.45)
                            );
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
