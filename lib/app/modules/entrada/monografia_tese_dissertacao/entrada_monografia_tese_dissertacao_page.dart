import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/modules/entrada/monografia_tese_dissertacao/controllers/entrada_monografia_tese_dissertacao_controller.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/assunto_entidade_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/assunto_topico_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/dados_fixos_livros_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/dados_fixos_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/descricao_fisica_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/entrada_secundaria_entidade_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/fonte_catalogadora_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/imprenta_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/lider_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nome_pessoal_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nome_pessoal_secundaria_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nota_de_bibliografia_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nota_de_dissertacao_ou_tese_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nota_de_outros_formatos_disponiveis_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nota_de_resumo_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nota_geral_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/numero_de_chamada_local_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/numero_de_classificacao_decimal_universal_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/titulo_principal_panel.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';
import '../../../shared/panels/entrada/localizacao_e_acesso_eletronico_panel.dart';

class EntradaTesePage extends StatefulWidget {
  const EntradaTesePage({super.key});

  @override
  State<EntradaTesePage> createState() => _EntradaTesePageState();
}

class _EntradaTesePageState extends State<EntradaTesePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp)  async { 
       await context.read<EntradaMonografiaTeseDissertacaoController>().getCodigoAcervo();
       if (mounted) await context.read<EntradaMonografiaTeseDissertacaoController>().getExemplarDataID();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // INSTÂNCIA DO CONTROLLER - ASSISTE MUDANÇAS
    var entradaMonografiaTeseDissertacaoController = context.watch<EntradaMonografiaTeseDissertacaoController>();
    
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Cadastro monografia, tese e dissertação'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.3, vertical: 32.0),
        child: SingleChildScrollView(
          primary: false,
          child: Form(
            key: entradaMonografiaTeseDissertacaoController.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  titulo: "Código do acervo",
                  controller: entradaMonografiaTeseDissertacaoController.codigoAcervoController,
                  enabled: false,
                  width: 130.0,
                ),
                const SizedBox(height: 16.0),
                LiderPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaLiderController..text = '000', 
                  tamanhoDoRegistro_00_04: entradaMonografiaTeseDissertacaoController.tamanhoDoRegistro_00_04LiderController, 
                  statusDoRegistro_05: entradaMonografiaTeseDissertacaoController.statusDoRegistro_05LiderController, 
                  tipoDeRegistro_06: entradaMonografiaTeseDissertacaoController.tipoDeRegistro_06LiderController, 
                  nivelBibliografico_07: entradaMonografiaTeseDissertacaoController.nivelBibliografico_07LiderController, 
                  tipodeControle_08: entradaMonografiaTeseDissertacaoController.tipoDeControle_08LiderController, 
                  esquemaDeCodificacaoDeCaractere_09: entradaMonografiaTeseDissertacaoController.esquemaDeCodificacaoDeCaractere_09LiderController, 
                  numeroDeIndicadores_10: entradaMonografiaTeseDissertacaoController.numeroDeIndicadores_10LiderController, 
                  numeroDeSubcampos_11: entradaMonografiaTeseDissertacaoController.numeroDeSubcampos_11LiderController, 
                  enderecoDeDados_12_16: entradaMonografiaTeseDissertacaoController.enderecoDeDados_12_16LiderController, 
                  nivelDeCodificacao_17: entradaMonografiaTeseDissertacaoController.nivelDeCodificacao_17LiderController, 
                  formaDeCatalogacaoDescritiva_18: entradaMonografiaTeseDissertacaoController.formaDeCatalogacaoDescritiva_18LiderController, 
                  nivelDeRegistroDeRecurso_19: entradaMonografiaTeseDissertacaoController.nivelDeRegistroDeRecurso_19LiderController, 
                  tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20: entradaMonografiaTeseDissertacaoController.tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20LiderController, 
                  tamanhoDaPosicaoDoCaractereDeInicio_21: entradaMonografiaTeseDissertacaoController.tamanhoDaPosicaoDoCaractereDeInicio_21LiderController, 
                  tamanhoDaParteDefinidaParaImplementacao_22: entradaMonografiaTeseDissertacaoController.tamanhoDaParteDefinidaParaImplementacao_22LiderController, 
                  entradaNaoDefinida_23: entradaMonografiaTeseDissertacaoController.entradaNaoDefinida_23LiderController,
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: entradaMonografiaTeseDissertacaoController.numeroDeControleCamposDeControleController..text = entradaMonografiaTeseDissertacaoController.codigoAcervoController.text,
                  titulo: '001 - Número de controle',
                  enabled: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: true,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: entradaMonografiaTeseDissertacaoController.codigoMarcDaAgenciaCatalogaoraCamposDeControleController,
                  titulo: '003 - Código MARC agência catalogadora',
                  validator: true,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: entradaMonografiaTeseDissertacaoController.dataEHoraDaUltimaAtualizacaoCamposDeControleController..text = DateFormat("yyyy-MM-ddTHH:mm:ss").parse(DateTime.now().toIso8601String()).toString().replaceAll("-", "").replaceAll(":", "").replaceAll(" ", ""),
                  titulo: '005 - Data e hora da última atualização',
                  length: 18,
                  enabled: false,
                ),
                const SizedBox(height: 16.0),
                DadosFixosPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaDadosFixosController..text = '008', 
                  dataDeEntradaDoRegistroNoArquivo_00_05: entradaMonografiaTeseDissertacaoController.dataDeEntradaDoRegistroNoArquivo_00_05DadosFixosController, 
                  tipodeDataOuStatusDePublicacao_06: entradaMonografiaTeseDissertacaoController.tipodeDataOuStatusDePublicacao_06DadosFixosController, 
                  data1_07_10: entradaMonografiaTeseDissertacaoController.data1_07_10DadosFixosController, 
                  data2_11_14: entradaMonografiaTeseDissertacaoController.data2_11_14DadosFixosController, 
                  lugarDePublicacaoProducaoExecucao_15_17: entradaMonografiaTeseDissertacaoController.lugarDePublicacaoProducaoExecucao_15_17DadosFixosController, 
                  tipoDeMaterial_18_34: DadosFixosLivrosPanel(
                    ilustracoes_18_21: entradaMonografiaTeseDissertacaoController.ilustracoes_18_21DadosFixosController, 
                    publicoAlvo_22: entradaMonografiaTeseDissertacaoController.publicoAlvo_22DadosFixosController, 
                    formaDoDocumento_23: entradaMonografiaTeseDissertacaoController.formaDoDocumento_23DadosFixosController, 
                    naturezaDoConteudo_24_27: entradaMonografiaTeseDissertacaoController.naturezaDoConteudo_24_27DadosFixosController, 
                    publicacaoGovernamental_28: entradaMonografiaTeseDissertacaoController.publicacaoGovernamental_28DadosFixosController, 
                    publicacaoDeConferencia_29: entradaMonografiaTeseDissertacaoController.publicacaoDeConferencia_29DadosFixosController, 
                    obraComemorativa_30: entradaMonografiaTeseDissertacaoController.obraComemorativa_30DadosFixosController, 
                    indice_31: entradaMonografiaTeseDissertacaoController.indice_31DadosFixosController, 
                    indefinido_32: entradaMonografiaTeseDissertacaoController.indefinido_32DadosFixosController, 
                    formaLiteraria_33: entradaMonografiaTeseDissertacaoController.formaLiteraria_33DadosFixosController, 
                    biografia_34: entradaMonografiaTeseDissertacaoController.biografia_34DadosFixosController,
                  ), 
                  idiomaDoTextoDoDocumento_35_37: entradaMonografiaTeseDissertacaoController.idiomaDoTextoDoDocumento_35_37DadosFixosController, 
                  registroModificado_38: entradaMonografiaTeseDissertacaoController.registroModificado_38DadosFixosController, 
                  fonteDeCatalogacao_39: entradaMonografiaTeseDissertacaoController.fonteDeCatalogacao_39DadosFixosController,
                ),
                const SizedBox(height: 16.0),
                FonteCatalogadoraPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaFonteCatalogadoraController..text = '040', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorFonteCatalogadoraController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorFonteCatalogadoraController, 
                  $a_codigoAgenciaCatalogadora: entradaMonografiaTeseDissertacaoController.$a_codigoDaAgenciaCatalogadaFonteCatalogadoraController, 
                  $b_idiomaDaCatalogacao: entradaMonografiaTeseDissertacaoController.$b_idiomaDaCatalogacaoFonteCatalogadoraController, 
                  $c_agenciaQueTranscreveORegistro: entradaMonografiaTeseDissertacaoController.$c_agenciaQueTranscreveORegistroFonteCatalogadoraController, 
                  $d_agenciaQueAlterouORegistro: entradaMonografiaTeseDissertacaoController.$d_agenciaQueAlterouORegistroFonteCatalogadoraController, 
                  $e_fontesConvencionaisDeDescricaoDeDados: entradaMonografiaTeseDissertacaoController.$e_fontesConvencionaisDeDescricaoDeDadosFonteCatalogadoraController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoFonteCatalogadoraController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraController,
                ),
                const SizedBox(height: 16.0),
                NumeroDeClassificacaoDecimalUniversalPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNumeroClassificacaoUniversalController..text = '080', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorNumeroClassificacaoUniversalController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorNumeroClassificacaoUniversalController, 
                  $a_numeroDeClassificacao: entradaMonografiaTeseDissertacaoController.$a_numeroDeClassificacaoNumeroClassificacaoUniversalController, 
                  $b_numeroDoItem: entradaMonografiaTeseDissertacaoController.$b_numeroDoItemNumeroClassificacaoUniversalController, 
                  $x_subdivisaoAuxiliarComum: entradaMonografiaTeseDissertacaoController.$x_subdivisaoAuxiliarComumNumeroClassificacaoUniversalController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaMonografiaTeseDissertacaoController.$0_numeroDeControleDoRegistroDeAutoridadeNumeroClassificacaoUniversalController, 
                  $2_numeroDaEdicao: entradaMonografiaTeseDissertacaoController.$2_numeroDaEdicaoNumeroClassificacaoUniversalController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoNumeroClassificacaoUniversalController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaNumeroClassificacaoUniversalController,
                ),
                const SizedBox(height: 16.0),
                NumeroDeChamadaLocalPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNumeroDeChamadaLocalController..text = '090', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorNumeroDeChamadaLocalController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorNumeroDeChamadaLocalController, 
                  $a_classificacao: entradaMonografiaTeseDissertacaoController.$a_classificacaoNumeroDeChamadaLocalController, 
                  $b_numeroDeCutter: entradaMonografiaTeseDissertacaoController.$b_numeroDeCutterNumeroDeChamadaLocalController, 
                  $c_tipoDeObra: entradaMonografiaTeseDissertacaoController.$c_tipoDeObraNumeroDeChamadaLocalController, 
                  $d_anoDePublicacao: entradaMonografiaTeseDissertacaoController.$d_anoDePublicacaoNumeroDeChamadaLocalController, 
                  $8_unidadeCatalogadora: entradaMonografiaTeseDissertacaoController.$8_unidadeCatalogadoraNumeroDeChamadaLocalController,
                  siglaInstituicao: entradaMonografiaTeseDissertacaoController.siglaInstituicaoNumeroDeChamadaLocalController,
                  onPressedCutter: () async {
                    await context.read<EntradaMonografiaTeseDissertacaoController>().getCutter(nome: entradaMonografiaTeseDissertacaoController.$b_numeroDeCutterNumeroDeChamadaLocalController.text)
                    .then((response) {
                      return entradaMonografiaTeseDissertacaoController.$b_numeroDeCutterNumeroDeChamadaLocalController.text = response.codigoRetorno;
                    });
                  },
                ),
                const SizedBox(height: 16.0),
                NomePessoalPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNomePessoalController..text = '100',
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorNomePessoalController,
                  segundoIndicador:entradaMonografiaTeseDissertacaoController.segundoIndicadorNomePessoalController,
                  $a_nomePessoal:entradaMonografiaTeseDissertacaoController.$a_nomePessoalNomePessoalController,
                  $b_algarismosRomanosQueSeguemPrenome: entradaMonografiaTeseDissertacaoController.$b_algarismosRomanosQueSeguemPrenomeNomePessoalController,
                  $c_titulosEOutrasPalavrasAssociadasAoNome: entradaMonografiaTeseDissertacaoController.$c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalController,
                  $d_datasAssociadasAoNome: entradaMonografiaTeseDissertacaoController.$d_datasAssociadasAoNomeNomePessoalController,
                  $e_termoDeRelacao: entradaMonografiaTeseDissertacaoController.$e_termoDeRelacaoNomePessoalController,
                  $f_dataDaPublicacaoDoTrabalho: entradaMonografiaTeseDissertacaoController.$f_dataDaPublicacaoDoTrabalhoNomePessoalController,
                  $g_informacoesAdicionais: entradaMonografiaTeseDissertacaoController.$g_informacoesAdicionaisNomePessoalController,
                  $j_atributoQualificador: entradaMonografiaTeseDissertacaoController.$j_atributoQualificadorNomePessoalController,
                  $k_subcabecalho:entradaMonografiaTeseDissertacaoController.$k_subcabecalhoNomePessoalController,
                  $l_idiomaDaPublicacao: entradaMonografiaTeseDissertacaoController.$l_idiomaDaPublicacaoNomePessoalController,
                  $n_numeroDaSecaoDaPublicacao: entradaMonografiaTeseDissertacaoController.$n_numeroDaSecaoDaPublicacaoNomePessoalController,
                  $p_nomeDaSecaoDaPublicacao: entradaMonografiaTeseDissertacaoController.$p_nomeDaSecaoDaPublicacaoNomePessoalController,
                  $q_formaCompletaDoNome: entradaMonografiaTeseDissertacaoController.$q_formaCompletaDoNomeNomePessoalController,
                  $t_tituloDaPublicacao: entradaMonografiaTeseDissertacaoController.$t_tituloDaPublicacaoNomePessoalController,
                  $u_afiliacao:entradaMonografiaTeseDissertacaoController.$u_afiliacaoNomePessoalController,
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaMonografiaTeseDissertacaoController.$0_numeroDeControleDoRegistroDeAutoridadeNomePessoalController,
                  $4_relacao:entradaMonografiaTeseDissertacaoController.$4_relacaoNomePessoalController,
                  $6_ligacao:entradaMonografiaTeseDissertacaoController.$6_ligacaoNomePessoalController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaNomePessoalController,
                ),
                const SizedBox(height: 16.0),
                TituloPrincipalPanel(
                  etiqueta:entradaMonografiaTeseDissertacaoController.etiquetaTituloPrincipalController..text = '245',
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorTituloPrincipalController,
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorTituloPrincipalController,
                  $a_tituloPrincipal: entradaMonografiaTeseDissertacaoController.$a_tituloPrincipalTituloPrincipalController,
                  $b_subtitulo:entradaMonografiaTeseDissertacaoController.$b_subtituloTituloPrincipalController,
                  $c_indicacaoDeResponsabilidade: entradaMonografiaTeseDissertacaoController.$c_indicacaoDeResponsabilidadeTituloPrincipalController,
                  $f_datasDeAbrangencia: entradaMonografiaTeseDissertacaoController.$f_datasDeAbrangenciaTituloPrincipalController,
                  $g_conjuntoDeDatas: entradaMonografiaTeseDissertacaoController.$g_conjuntoDeDatasTituloPrincipalController,
                  $h_meioDGM:entradaMonografiaTeseDissertacaoController.$h_meioDGMTituloPrincipalController,
                  $k_formaDoMaterial: entradaMonografiaTeseDissertacaoController.$k_formaDoMaterialTituloPrincipalController,
                  $n_numeroDaSecaoDaPublicacao: entradaMonografiaTeseDissertacaoController.$n_numeroDaSecaoDaPublicacaoTituloPrincipalController,
                  $p_nomeDaSecaoDaPublicacao: entradaMonografiaTeseDissertacaoController.$p_nomeDaSecaoDaPublicacaoTituloPrincipalController,
                  $s_versao:entradaMonografiaTeseDissertacaoController.$s_versaoTituloPrincipalController,
                  $6_ligacao:entradaMonografiaTeseDissertacaoController.$6_ligacaoTituloPrincipalController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaTituloPrincipalController,
                ),
                const SizedBox(height: 16.0),
                ImprentaPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaImprentaController..text = '260',
                  primeiroIndicador:entradaMonografiaTeseDissertacaoController.primeiroIndicadorImprentaController,
                  segundoIndicador:entradaMonografiaTeseDissertacaoController.segundoIndicadorImprentaController,
                  $a_lugarDePublicacao: entradaMonografiaTeseDissertacaoController.$a_lugarDePublicacaoImprentaController,
                  $b_nomeDoEditor:entradaMonografiaTeseDissertacaoController.$b_nomeDoEditorImprentaController,
                  $c_dataDePublicacao:entradaMonografiaTeseDissertacaoController.$c_dataDePublicacaoImprentaController,
                  $e_lugarDeFabricacao: entradaMonografiaTeseDissertacaoController.$e_lugarDeFabricacaoImprentaController,
                  $f_nomeDoFabricante:entradaMonografiaTeseDissertacaoController.$f_nomeDoFabricanteImprentaController,
                  $g_dataDeFabricacao:entradaMonografiaTeseDissertacaoController.$g_dataDeFabricacaoImprentaController,
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoImprentaController,
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoImprentaController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaImprentaController,
                ),
                const SizedBox(height: 16.0),
                DescricaoFisicaPanel(
                  etiqueta:entradaMonografiaTeseDissertacaoController.etiquetaDescricaoFisicaController..text = '300',
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorDescricaoFisicaController,
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorDescricaoFisicaController,
                  $a_extensao:entradaMonografiaTeseDissertacaoController.$a_extensaoDescricaoFisicaController,
                  $b_detalhesFisicosAdicionais: entradaMonografiaTeseDissertacaoController.$b_detalhesFisicosAdicionaisDescricaoFisicaController,
                  $c_dimensoes:entradaMonografiaTeseDissertacaoController.$c_dimensoesDescricaoFisicaController,
                  $e_materialAdicional: entradaMonografiaTeseDissertacaoController.$e_materialAdicionalDescricaoFisicaController,
                  $f_tipoDeUnidade: entradaMonografiaTeseDissertacaoController.$f_tipoDeUnidadeDescricaoFisicaController,
                  $g_tamanhoDaUnidade: entradaMonografiaTeseDissertacaoController.$g_tamanhoDaUnidadeDescricaoFisicaController,
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoDescricaoFisicaController,
                  $6_ligacao:entradaMonografiaTeseDissertacaoController.$6_ligacaoDescricaoFisicaController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaDescricaoFisicaController,
                ),
                const SizedBox(height: 16.0),
                NotaGeralPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNotaGeralController..text = '500',
                  primeiroIndicador:entradaMonografiaTeseDissertacaoController.primeiroIndicadorNotaGeralController,
                  segundoIndicador:entradaMonografiaTeseDissertacaoController.segundoIndicadorNotaGeralController,
                  $a_notaGeral:entradaMonografiaTeseDissertacaoController.$a_notaGeralNotaGeralController,
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoNotaGeralController,
                  $5_codigoDaInstituicao: entradaMonografiaTeseDissertacaoController.$5_codigoDaInstituicaoNotaGeralController,
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoNotaGeralController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaNotaGeralController,
                ),
                const SizedBox(height: 16.0),
                NotaDeDissertacaoOuTesePanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNotaDeDissertacaoOuTeseController..text = '502',
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorNotaDeDissertacaoOuTeseController,
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorNotaDeDissertacaoOuTeseController,
                  $a_notaDeDissertacaoOuTese: entradaMonografiaTeseDissertacaoController.$a_notaDeDissertacaoOuTeseControllerNotaDeDissertacaoOuTeseController,
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoNotaDeDissertacaoOuTeseController,
                  $8_campoDeLigacaoOuNumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaNotaDeDissertacaoOuTeseController,
                ),
                const SizedBox(height: 16.0),
                NotaDeBibliografiaPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNotaDeBibliografiaController..text = '504', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorNotaDeBibliografiaController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorNotaDeBibliografiaController, 
                  $a_notaDeBibliografia: entradaMonografiaTeseDissertacaoController.$a_notaDeBibliografiaNotaDeBibliografiaController, 
                  $b_numeroDeReferencias: entradaMonografiaTeseDissertacaoController.$b_numeroDeReferenciasNotaDeBibliografiaController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoNotaDeBibliografiaController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaNotaDeBibliografiaController,
                ),
                const SizedBox(height: 16.0),
                NotaDeResumoPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNotaDeResumoController..text = '520', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorNotaDeResumoController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorNotaDeResumoController, 
                  $a_notaDeResumo: entradaMonografiaTeseDissertacaoController.$a_notaDeResumoNotaDeResumoController, 
                  $b_expansaoDaNotaDeResumo: entradaMonografiaTeseDissertacaoController.$b_expansaoDaNotaDeResumoNotaDeResumoController,
                  $c_agenciaDepositaria: entradaMonografiaTeseDissertacaoController.$c_agenciaDepositariaNotaDeResumoController, 
                  $u_URI: entradaMonografiaTeseDissertacaoController.$u_URINotaDeResumoController, 
                  $2_fonte: entradaMonografiaTeseDissertacaoController.$2_fonteNotaDeResumoController, 
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoNotaDeResumoController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoNotaDeResumoController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaNotaDeResumoController,
                ),
                const SizedBox(height: 16.0),
                NotaDeOutrosFormatosDisponiveisPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaNotaDeOutrosFormatosDisponiveisController..text = '530', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorNotaDeOutrosFormatosDisponiveisController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorNotaDeOutrosFormatosDisponiveisController, 
                  $a_outroFormatoDisponivel: entradaMonografiaTeseDissertacaoController.$a_outroFormatoDisponivelNotaDeOutrosFormatosDisponiveisController, 
                  $b_fonte: entradaMonografiaTeseDissertacaoController.$b_fonteNotaDeOutrosFormatosDisponiveisController, 
                  $c_condicoes: entradaMonografiaTeseDissertacaoController.$c_condicoesNotaDeOutrosFormatosDisponiveisController, 
                  $d_numeroDeOrdem: entradaMonografiaTeseDissertacaoController.$d_numeroDeOrdemNotaDeOutrosFormatosDisponiveisController, 
                  $u_URI: entradaMonografiaTeseDissertacaoController.$u_URINotaDeOutrosFormatosDisponiveisController, 
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoNotaDeOutrosFormatosDisponiveisController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoNotaDeOutrosFormatosDisponiveisController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaNotaDeOutrosFormatosDisponiveisController,
                ),
                const SizedBox(height: 16.0),
                AssuntoEntidadePanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaAssuntoEntidadeController..text = '610', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorAssuntoEntidadeController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorAssuntoEntidadeController, 
                  $a_nomeDaEntidadeOuLugar: entradaMonografiaTeseDissertacaoController.$a_nomeDaEntidadeOuLugarAssuntoEntidadeController, 
                  $b_unidadesSubordinadas: entradaMonografiaTeseDissertacaoController.$b_unidadesSubordinadasAssuntoEntidadeController, 
                  $c_LocalDeRealizacaoDoEncontro: entradaMonografiaTeseDissertacaoController.$c_LocalDeRealizacaoDoEncontroAssuntoEntidadeController, 
                  $d_dataDeRealizacaoDoEvento: entradaMonografiaTeseDissertacaoController.$d_dataDeRealizacaoDoEventoAssuntoEntidadeController, 
                  $e_termoDeRelacao: entradaMonografiaTeseDissertacaoController.$e_termoDeRelacaoAssuntoEntidadeController, 
                  $f_dataDaPublicacaoDoTrabalho: entradaMonografiaTeseDissertacaoController.$f_dataDaPublicacaoDoTrabalhoAssuntoEntidadeController, 
                  $g_informacoesAdicionais: entradaMonografiaTeseDissertacaoController.$g_informacoesAdicionaisAssuntoEntidadeController, 
                  $h_meioDGM: entradaMonografiaTeseDissertacaoController.$h_meioDGMAssuntoEntidadeController, 
                  $k_subcabecalho: entradaMonografiaTeseDissertacaoController.$k_subcabecalhoAssuntoEntidadeController, 
                  $l_idiomaDaPublicacao: entradaMonografiaTeseDissertacaoController.$l_idiomaDaPublicacaoAssuntoEntidadeController, 
                  $m_instrumentosMusicais: entradaMonografiaTeseDissertacaoController.$m_instrumentosMusicaisAssuntoEntidadeController, 
                  $n_numeroDaSecaoOuEvento: entradaMonografiaTeseDissertacaoController.$n_numeroDaSecaoOuEventoAssuntoEntidadeController, 
                  $o_arranjoMusical: entradaMonografiaTeseDissertacaoController.$o_arranjoMusicalAssuntoEntidadeController,
                  $p_nomeDaSecaoPublicada: entradaMonografiaTeseDissertacaoController.$p_nomeDaSecaoPublicadaAssuntoEntidadeController, 
                  $r_escalaMusical: entradaMonografiaTeseDissertacaoController.$r_escalaMusicalAssuntoEntidadeController, 
                  $s_versao: entradaMonografiaTeseDissertacaoController.$s_versaoAssuntoEntidadeController, 
                  $t_tituloDaPublicacao: entradaMonografiaTeseDissertacaoController.$t_tituloDaPublicacaoAssuntoEntidadeController, 
                  $u_afiliacao: entradaMonografiaTeseDissertacaoController.$u_afiliacaoAssuntoEntidadeController, 
                  $v_subdivisaoDeForma: entradaMonografiaTeseDissertacaoController.$v_subdivisaoDeFormaAssuntoEntidadeController, 
                  $x_subdivisaoGeral: entradaMonografiaTeseDissertacaoController.$x_subdivisaoGeralAssuntoEntidadeController, 
                  $y_subdivisaoCronologica: entradaMonografiaTeseDissertacaoController.$y_subdivisaoCronologicaAssuntoEntidadeController, 
                  $z_subdivisaoGeografica: entradaMonografiaTeseDissertacaoController.$z_subdivisaoGeograficaAssuntoEntidadeController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaMonografiaTeseDissertacaoController.$0_numeroDeControleDoRegistroDeAutoridadeAssuntoEntidadeController, 
                  $2_fonteDoCabecalhoOuTermo: entradaMonografiaTeseDissertacaoController.$2_fonteDoCabecalhoOuTermoAssuntoEntidadeController, 
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoAssuntoEntidadeController, 
                  $4_relacao: entradaMonografiaTeseDissertacaoController.$4_relacaoAssuntoEntidadeController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoAssuntoEntidadeController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaAssuntoEntidadeController,
                ),
                const SizedBox(height: 16.0),
                AssuntoTopicoPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaAssuntoTopicoController..text = '650', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorAssuntoTopicoController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorAssuntoTopicoController, 
                  $a_cabecalhoTopicoOuNomeGeografico: entradaMonografiaTeseDissertacaoController.$a_cabecalhoTopicoOuNomeGeograficoAssuntoTopicoController, 
                  $b_cabecalhoTopicoSeguindoNomeGeografico: entradaMonografiaTeseDissertacaoController.$b_cabecalhoTopicoSeguindoNomeGeograficoAssuntoTopicoController, 
                  $c_localDoEvento: entradaMonografiaTeseDissertacaoController.$c_localDoEventoAssuntoTopicoController, 
                  $d_dataDeRealizacaoDoEvento: entradaMonografiaTeseDissertacaoController.$d_dataDeRealizacaoDoEventoAssuntoTopicoController, 
                  $e_termoDeRelacao: entradaMonografiaTeseDissertacaoController.$e_termoDeRelacaoAssuntoTopicoController, 
                  $g_informacoesAdicionais: entradaMonografiaTeseDissertacaoController.$g_informacoesAdicionaisAssuntoTopicoController, 
                  $v_subdivisaoDeForma: entradaMonografiaTeseDissertacaoController.$v_subdivisaoDeFormaAssuntoTopicoController, 
                  $x_subdivisaoGeral: entradaMonografiaTeseDissertacaoController.$x_subdivisaoGeralAssuntoTopicoController, 
                  $y_subdivisaoCronologica: entradaMonografiaTeseDissertacaoController.$y_subdivisaoCronologicaAssuntoTopicoController, 
                  $z_subdivisaoGeografica: entradaMonografiaTeseDissertacaoController.$z_subdivisaoGeograficaAssuntoTopicoController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaMonografiaTeseDissertacaoController.$0_numeroDeControleDoRegistroDeAutoridadeAssuntoTopicoController, 
                  $2_fonteDoCabecalhoOuTermo: entradaMonografiaTeseDissertacaoController.$2_fonteDoCabecalhoOuTermoAssuntoTopicoController, 
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoAssuntoTopicoController, 
                  $4_relacao: entradaMonografiaTeseDissertacaoController.$4_relacaoAssuntoTopicoController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoAssuntoTopicoController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaAssuntoTopicoController,
                ),
                const SizedBox(height: 16.0),
                NomePessoalSecundariaPanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaEntradaSecundariaNomePessoalController..text = '700',
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorEntradaSecundariaNomePessoalController,
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorEntradaSecundariaNomePessoalController,
                  $a_nomePessoal: entradaMonografiaTeseDissertacaoController.$a_nomePessoalEntradaSecundariaNomePessoalController,
                  $b_algarismosRomanosQueSeguemOPrenome: entradaMonografiaTeseDissertacaoController.$b_algarismosRomanosQueSeguemOPrenomeEntradaSecundariaNomePessoalController,
                  $c_titulosEOutrasPalavrasAssociadasAoNome: entradaMonografiaTeseDissertacaoController.$c_titulosEOutrasPalavrasAssociadasAoNomeEntradaSecundariaNomePessoalController,
                  $d_datasAssociadasAoNome: entradaMonografiaTeseDissertacaoController.$d_datasAssociadasAoNomeEntradaSecundariaNomePessoalController,
                  $e_termoDeRelacao: entradaMonografiaTeseDissertacaoController.$e_termoDeRelacaoEntradaSecundariaNomePessoalController,
                  $f_dataDaPublicacaoDoTrabalho: entradaMonografiaTeseDissertacaoController.$f_dataDaPublicacaoDoTrabalhoEntradaSecundariaNomePessoalController,
                  $g_informacoesAdicionais: entradaMonografiaTeseDissertacaoController.$g_informacoesAdicionaisEntradaSecundariaNomePessoalController,
                  $h_meioDGM: entradaMonografiaTeseDissertacaoController.$h_meioDGMEntradaSecundariaNomePessoalController,
                  $i_informacoesSobreRelacoes: entradaMonografiaTeseDissertacaoController.$i_informacoesSobreRelacoesEntradaSecundariaNomePessoalController,
                  $j_atributo: entradaMonografiaTeseDissertacaoController.$j_atributoEntradaSecundariaNomePessoalController,
                  $k_subcabecalhos: entradaMonografiaTeseDissertacaoController.$k_subcabecalhosEntradaSecundariaNomePessoalController,
                  $l_idiomaDaPublicacao: entradaMonografiaTeseDissertacaoController.$l_idiomaDaPublicacaoEntradaSecundariaNomePessoalController,
                  $m_instrumentosMusicais: entradaMonografiaTeseDissertacaoController.$m_instrumentosMusicaisEntradaSecundariaNomePessoalController,
                  $n_numeroDaSecaoDaPublicacao: entradaMonografiaTeseDissertacaoController.$n_numeroDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController,
                  $o_arranjoMusical: entradaMonografiaTeseDissertacaoController.$o_arranjoMusicalEntradaSecundariaNomePessoalController,
                  $p_nomeDaSecaoDaPublicacao: entradaMonografiaTeseDissertacaoController.$p_nomeDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController,
                  $q_formaCompletaDoNome: entradaMonografiaTeseDissertacaoController.$q_formaCompletaDoNomeEntradaSecundariaNomePessoalController,
                  $r_escalaMusical: entradaMonografiaTeseDissertacaoController.$r_escalaMusicalEntradaSecundariaNomePessoalController,
                  $s_versao: entradaMonografiaTeseDissertacaoController.$s_versaoEntradaSecundariaNomePessoalController,
                  $t_tituloDaPublicacao: entradaMonografiaTeseDissertacaoController.$t_tituloDaPublicacaoEntradaSecundariaNomePessoalController,
                  $u_afiliacao: entradaMonografiaTeseDissertacaoController.$u_afiliacaoEntradaSecundariaNomePessoalController,
                  $x_ISSN: entradaMonografiaTeseDissertacaoController.$x_ISSNEntradaSecundariaNomePessoalController,
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaMonografiaTeseDissertacaoController.$0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaNomePessoalController,
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoEntradaSecundariaNomePessoalController,
                  $4_relacao: entradaMonografiaTeseDissertacaoController.$4_relacaoEntradaSecundariaNomePessoalController,
                  $5_codigoDaInstituicao: entradaMonografiaTeseDissertacaoController.$5_codigoDaInstituicaoEntradaSecundariaNomePessoalController,
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoEntradaSecundariaNomePessoalController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaNomePessoalController,
                ),
                const SizedBox(height: 16.0),
                EntradaSecundariaEntidadePanel(
                  etiqueta: entradaMonografiaTeseDissertacaoController.etiquetaEntradaSecundariaEntidadeController..text = '710', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorEntradaSecundariaEntidadeController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorEntradaSecundariaEntidadeController, 
                  $a_nomeDaEntidadeOuDoLugar: entradaMonografiaTeseDissertacaoController.$a_nomeDaEntidadeOuDoLugarEntradaSecundariaEntidadeController, 
                  $b_unidadesSubordinadas: entradaMonografiaTeseDissertacaoController.$b_unidadesSubordinadasEntradaSecundariaEntidadeController, 
                  $c_localDeRealizacaoDoEvento: entradaMonografiaTeseDissertacaoController.$c_localDeRealizacaoDoEventoEntradaSecundariaEntidadeController, 
                  $d_dataDeRealizacaoDoEvento: entradaMonografiaTeseDissertacaoController.$d_dataDeRealizacaoDoEventoEntradaSecundariaEntidadeController, 
                  $e_termoDeRelacao: entradaMonografiaTeseDissertacaoController.$e_termoDeRelacaoEntradaSecundariaEntidadeController, 
                  $f_dataDePublicacao: entradaMonografiaTeseDissertacaoController.$f_dataDePublicacaoEntradaSecundariaEntidadeController, 
                  $g_informacoesAdicionais: entradaMonografiaTeseDissertacaoController.$g_informacoesAdicionaisEntradaSecundariaEntidadeController, 
                  $h_meioDGM: entradaMonografiaTeseDissertacaoController.$h_meioDGMEntradaSecundariaEntidadeController, 
                  $i_informacoesSobreRelacoes: entradaMonografiaTeseDissertacaoController.$i_informacoesSobreRelacoesEntradaSecundariaEntidadeController, 
                  $k_subcabecalho: entradaMonografiaTeseDissertacaoController.$k_subcabecalhoEntradaSecundariaEntidadeController, 
                  $l_idiomaDaPublicacao: entradaMonografiaTeseDissertacaoController.$l_idiomaDaPublicacaoEntradaSecundariaEntidadeController, 
                  $m_meioDeExecucaoParaMusica: entradaMonografiaTeseDissertacaoController.$m_meioDeExecucaoParaMusicaEntradaSecundariaEntidadeController, 
                  $n_numeroDaSecao: entradaMonografiaTeseDissertacaoController.$n_numeroDaSecaoEntradaSecundariaEntidadeController, 
                  $o_arranjoMusical: entradaMonografiaTeseDissertacaoController.$o_arranjoMusicalEntradaSecundariaEntidadeController, 
                  $p_nomeDaSecaoDaPublicacao: entradaMonografiaTeseDissertacaoController.$p_nomeDaSecaoDaPublicacaoEntradaSecundariaEntidadeController, 
                  $r_escalaMusical: entradaMonografiaTeseDissertacaoController.$r_escalaMusicalEntradaSecundariaEntidadeController, 
                  $s_versao: entradaMonografiaTeseDissertacaoController.$s_versaoEntradaSecundariaEntidadeController, 
                  $t_tituloDaPublicacao: entradaMonografiaTeseDissertacaoController.$t_tituloDaPublicacaoEntradaSecundariaEntidadeController, 
                  $u_afiliacao: entradaMonografiaTeseDissertacaoController.$u_afiliacaoEntradaSecundariaEntidadeController, 
                  $x_ISSN: entradaMonografiaTeseDissertacaoController.$x_ISSNEntradaSecundariaEntidadeController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaMonografiaTeseDissertacaoController.$0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaEntidadeController, 
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoEntradaSecundariaEntidadeController, 
                  $4_relacao: entradaMonografiaTeseDissertacaoController.$4_relacaoEntradaSecundariaEntidadeController, 
                  $5_codigoDaInstituicao: entradaMonografiaTeseDissertacaoController.$5_codigoDaInstituicaoEntradaSecundariaEntidadeController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoEntradaSecundariaEntidadeController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaEntidadeController,
                ),
                const SizedBox(height: 16.0),
                LocalizacaoEAcessoEletronicoPanel(
                  etiqueta_856: entradaMonografiaTeseDissertacaoController.etiquetaLocalizacaoEAcessoController..text = '856', 
                  primeiroIndicador: entradaMonografiaTeseDissertacaoController.primeiroIndicadorLocalizacaoEAcessoController, 
                  segundoIndicador: entradaMonografiaTeseDissertacaoController.segundoIndicadorLocalizacaoEAcessoController, 
                  $a_nomeDoServidor: entradaMonografiaTeseDissertacaoController.$a_nomeDoServidorLocalizacaoEAcessoController, 
                  $b_numeroDoAcesso: entradaMonografiaTeseDissertacaoController.$b_numeroDoAcessoLocalizacaoEAcessoController, 
                  $c_informacoesSobreCompactacao: entradaMonografiaTeseDissertacaoController.$c_informacoesSobreCompactacaoLocalizacaoEAcessoController, 
                  $d_caminho: entradaMonografiaTeseDissertacaoController.$d_caminhoLocalizacaoEAcessoController, 
                  $f_nomeDoArquivoEletronico: entradaMonografiaTeseDissertacaoController.$f_nomeDoArquivoEletronicoLocalizacaoEAcessoController, 
                  $h_username: entradaMonografiaTeseDissertacaoController.$h_usernameLocalizacaoEAcessoController, 
                  $i_instrucao: entradaMonografiaTeseDissertacaoController.$i_instrucaoLocalizacaoEAcessoController, 
                  $j_bitsPorSegundo: entradaMonografiaTeseDissertacaoController.$j_bitsPorSegundoLocalizacaoEAcessoController, 
                  $k_password: entradaMonografiaTeseDissertacaoController.$k_passwordLocalizacaoEAcessoController, 
                  $l_login: entradaMonografiaTeseDissertacaoController.$l_loginLocalizacaoEAcessoController, 
                  $m_contatoParaObterAjuda: entradaMonografiaTeseDissertacaoController.$m_contatoParaObterAjudaLocalizacaoEAcessoController, 
                  $n_nomeDaLocalizacaoDoServidor: entradaMonografiaTeseDissertacaoController.$n_nomeDaLocalizacaoDoServidorLocalizacaoEAcessoController, 
                  $o_sistemaOperativo: entradaMonografiaTeseDissertacaoController.$o_sistemaOperativoLocalizacaoEAcessoController, 
                  $p_porta: entradaMonografiaTeseDissertacaoController.$p_portaLocalizacaoEAcessoController, 
                  $q_tipoDoFormatoEletronico: entradaMonografiaTeseDissertacaoController.$q_tipoDoFormatoEletronicoLocalizacaoEAcessoController, 
                  $r_configuracao: entradaMonografiaTeseDissertacaoController.$r_configuracaoLocalizacaoEAcessoController, 
                  $s_tamanhoDoArquivo: entradaMonografiaTeseDissertacaoController.$s_tamanhoDoArquivoLocalizacaoEAcessoController, 
                  $t_emulacaoDeTerminal: entradaMonografiaTeseDissertacaoController.$t_emulacaoDeTerminalLocalizacaoEAcessoController, 
                  $u_identificadorUniformeDeRecursoURI: entradaMonografiaTeseDissertacaoController.$u_identificadorUniformeDeRecursoURILocalizacaoEAcessoController, 
                  $v_horarioDeAcesso: entradaMonografiaTeseDissertacaoController.$v_horarioDeAcessoLocalizacaoEAcessoController, 
                  $w_numeroDeControleDeUmRegistro: entradaMonografiaTeseDissertacaoController.$w_numeroDeControleDeUmRegistroLocalizacaoEAcessoController, 
                  $x_notaInterna: entradaMonografiaTeseDissertacaoController.$x_notaInternaLocalizacaoEAcessoController, 
                  $y_textoDoLink: entradaMonografiaTeseDissertacaoController.$y_textoDoLinkLocalizacaoEAcessoController, 
                  $z_notaDoPublico: entradaMonografiaTeseDissertacaoController.$z_notaDoPublicoLocalizacaoEAcessoController, 
                  $2_metodoDeAcesso: entradaMonografiaTeseDissertacaoController.$2_metodoDeAcessoLocalizacaoEAcessoController, 
                  $3_materialEspecificado: entradaMonografiaTeseDissertacaoController.$3_materialEspecificadoLocalizacaoEAcessoController, 
                  $6_ligacao: entradaMonografiaTeseDissertacaoController.$6_ligacaoLocalizacaoEAcessoController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaMonografiaTeseDissertacaoController.$8_campoDeLigacaoENumeroDeSequenciaLocalizacaoEAcessoController,
                ),
                const SizedBox(height: 16.0),
                entradaMonografiaTeseDissertacaoController.isLoading ? const Center(child: CircularProgressIndicator()) : Align(
                  alignment: Alignment.bottomRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // BOTÂO SALVAR
                        CustomElevatedButtonWidget(
                          titulo: 'Salvar',
                          cor: ClassAppColors.verde,
                          icone: Icons.save,
                           onPressed: () async {
                             await context.read<EntradaMonografiaTeseDissertacaoController>().setMonografiaTeseEDissertacao().then((response) {
                               if(response.codigoRetorno == "201"){
                                 ScaffoldMessenger.of(context).showSnackBar(
                                   SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                                 );
                                 context.read<EntradaMonografiaTeseDissertacaoController>().limparControllersMonografiaTeseEDissertacao();
                                 Navigator.pop(context);
                               } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                   SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao salvar registro!', largura: size.width * 0.37, altura: size.height * 0.45)
                                 );
                               }
                             });
                           },
                        ),
                        const SizedBox(width: 16.0),
                        // BOTÂO CANCELAR
                        CustomElevatedButtonWidget(
                          cor: ClassAppColors.vermelho,
                          titulo: 'Cancelar',
                          icone: Icons.cancel_rounded,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
