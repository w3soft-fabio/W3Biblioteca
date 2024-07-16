import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:w3biblioteca/app/classes/classes_do_app/class_app_colors.dart';
import 'package:w3biblioteca/app/modules/entrada/livro/controllers/entrada_livro_controller.dart';
import 'package:w3biblioteca/app/modules/login/widgets/text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/dados_fixos_livros_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/dados_fixos_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/descricao_fisica_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/edicao_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/fonte_catalogadora_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/imprenta_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/isbn_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/lider_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/localizacao_e_acesso_eletronico_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nome_pessoal_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/nome_pessoal_secundaria_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/numero_de_chamada_local_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/numero_de_classificacao_decimal_universal_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/titulo_original_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/titulo_principal_panel.dart';
import 'package:w3biblioteca/app/shared/panels/entrada/topico_panel.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_app_bar_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_elevated_button_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/custom_text_form_field_widget.dart';
import 'package:w3biblioteca/app/shared/widgets/snack_bar_widget.dart';

class EntradaLivroPage extends StatefulWidget {
  const EntradaLivroPage({super.key});

  @override
  State<EntradaLivroPage> createState() => _EntradaLivroPageState();
}

class _EntradaLivroPageState extends State<EntradaLivroPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp)  async { 
       await context.read<EntradaLivroController>().getCodigoAcervo();
       if (mounted) await context.read<EntradaLivroController>().getExemplarDataID();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // CRIA INSTÂNCIA DO CONTROLLER - ASSISTE AS MUDANÇAS
    var entradaLivroController = context.watch<EntradaLivroController>();
    
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBarWidget(titulo: 'Cadastro livro'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.2, vertical: 32.0),
        child: SingleChildScrollView(
          primary: false,
          child: Form(
            key: entradaLivroController.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  titulo: "Código do acervo",
                  controller: entradaLivroController.codigoAcervoController,
                  enabled: false,
                  width: 130.0,
                ),
                const SizedBox(height: 16.0),
                LiderPanel(
                  etiqueta: entradaLivroController.etiquetaLiderController..text = '000', 
                  tamanhoDoRegistro_00_04: entradaLivroController.tamanhoDoRegistro_00_04LiderController, 
                  statusDoRegistro_05: entradaLivroController.statusDoRegistro_05LiderController, 
                  tipoDeRegistro_06: entradaLivroController.tipoDeRegistro_06LiderController, 
                  nivelBibliografico_07: entradaLivroController.nivelBibliografico_07LiderController, 
                  tipodeControle_08: entradaLivroController.tipoDeControle_08LiderController, 
                  esquemaDeCodificacaoDeCaractere_09: entradaLivroController.esquemaDeCodificacaoDeCaractere_09LiderController, 
                  numeroDeIndicadores_10: entradaLivroController.numeroDeIndicadores_10LiderController, 
                  numeroDeSubcampos_11: entradaLivroController.numeroDeSubcampos_11LiderController, 
                  enderecoDeDados_12_16: entradaLivroController.enderecoDeDados_12_16LiderController, 
                  nivelDeCodificacao_17: entradaLivroController.nivelDeCodificacao_17LiderController, 
                  formaDeCatalogacaoDescritiva_18: entradaLivroController.formaDeCatalogacaoDescritiva_18LiderController, 
                  nivelDeRegistroDeRecurso_19: entradaLivroController.nivelDeRegistroDeRecurso_19LiderController, 
                  tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20: entradaLivroController.tamanhoDaParteCorrespondenteAoTamanhoDoCampo_20LiderController, 
                  tamanhoDaPosicaoDoCaractereDeInicio_21: entradaLivroController.tamanhoDaPosicaoDoCaractereDeInicio_21LiderController, 
                  tamanhoDaParteDefinidaParaImplementacao_22: entradaLivroController.tamanhoDaParteDefinidaParaImplementacao_22LiderController,
                  entradaNaoDefinida_23: entradaLivroController.entradaNaoDefinida_23LiderController,
                ),
                const SizedBox(height: 16.0),
                TextFormFieldWidget(
                  controller: entradaLivroController.numeroDeControleCamposDeControleController..text = entradaLivroController.codigoAcervoController.text,
                  titulo: '(001) - Número de controle',
                  enabled: false,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: true,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: entradaLivroController.codigoMarcDaAgenciaCatalogaoraCamposDeControleController,
                  titulo: '(003) - Código MARC agência catalogadora',
                  validator: true,
                ),
                const SizedBox(height: 16.0),
                CustomTextFormFieldWidget(
                  controller: entradaLivroController.dataEHoraDaUltimaAtualizacaoCamposDeControleController..text = DateFormat("yyyy-MM-ddTHH:mm:ss").parse(DateTime.now().toIso8601String()).toString().replaceAll("-", "").replaceAll(":", "").replaceAll(" ", ""),
                  titulo: '(005) - Data e hora da última atualização',
                  length: 18,
                  enabled: false,
                ),
                const SizedBox(height: 16.0),
                DadosFixosPanel(
                  etiqueta: entradaLivroController.etiquetaDadosFixosController..text = '008', 
                  dataDeEntradaDoRegistroNoArquivo_00_05: entradaLivroController.dataDeEntradaDoRegistroNoArquivo_00_05DadosFixosController, 
                  tipodeDataOuStatusDePublicacao_06: entradaLivroController.tipodeDataOuStatusDePublicacao_06DadosFixosController, 
                  data1_07_10: entradaLivroController.data1_07_10DadosFixosController, 
                  data2_11_14: entradaLivroController.data2_11_14DadosFixosController, 
                  lugarDePublicacaoProducaoExecucao_15_17: entradaLivroController.lugarDePublicacaoProducaoExecucao_15_17DadosFixosController, 
                  tipoDeMaterial_18_34: DadosFixosLivrosPanel(
                    ilustracoes_18_21: entradaLivroController.ilustracoes_18_21DadosFixosLivrosController,
                    publicoAlvo_22: entradaLivroController.publicoAlvo_22DadosFixosLivrosController,
                    formaDoDocumento_23: entradaLivroController.formaDoDocumento_23DadosFixosLivrosController,
                    naturezaDoConteudo_24_27: entradaLivroController.naturezaDoConteudo_24_27DadosFixosLivrosController,
                    publicacaoGovernamental_28: entradaLivroController.publicacaoGovernamental_28DadosFixosLivrosController,
                    publicacaoDeConferencia_29: entradaLivroController.publicacaoDeConferencia_29DadosFixosLivrosController,
                    obraComemorativa_30: entradaLivroController.obraComemorativa_30DadosFixosLivrosController,
                    indice_31: entradaLivroController.indice_31DadosFixosLivrosController,
                    indefinido_32: entradaLivroController.indefinido_32DadosFixosLivrosController,
                    formaLiteraria_33: entradaLivroController.formaLiteraria_33DadosFixosLivrosController,
                    biografia_34: entradaLivroController.biografia_34DadosFixosLivrosController,
                  ), 
                  idiomaDoTextoDoDocumento_35_37: entradaLivroController.idiomaDoTextoDoDocumento_35_37DadosFixosController, 
                  registroModificado_38: entradaLivroController.registroModificado_38DadosFixosController, 
                  fonteDeCatalogacao_39: entradaLivroController.fonteDeCatalogacao_39DadosFixosController,
                ),
                const SizedBox(height: 16.0),
                IsbnPanel(
                  etiqueta: entradaLivroController.etiquetaISBNController..text = '020',
                  primeiroIndicador: entradaLivroController.primeiroIndicadorISBNController,
                  segundoIndicador: entradaLivroController.segundoIndicadorISBNController,
                  $a_numeroIsbn: entradaLivroController.$a_numeroDoISBNController,
                  $c_modalidadesDeAquisicao: entradaLivroController.$c_modalidadesDeAquisicaoISBNController,
                  $q_informacaoQualificadora: entradaLivroController.$q_informacaoQualificadoraISBNController,
                  $z_isbnInvalido: entradaLivroController.$z_isbnCanceladoOuInvalidoISBNController,
                  $6_ligacao: entradaLivroController.$6_ligacaoISBNController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaISBNController,
                ),
                const SizedBox(height: 16.0),
                FonteCatalogadoraPanel(
                  etiqueta: entradaLivroController.etiquetaFonteCatalogadoraController..text = '040',
                  primeiroIndicador: entradaLivroController.primeiroIndicadorFonteCatalogadoraController,
                  segundoIndicador: entradaLivroController.segundoIndicadorFonteCatalogadoraController,
                  $a_codigoAgenciaCatalogadora: entradaLivroController.$a_codigoDaAgenciaCatalogadaFonteCatalogadoraController,
                  $b_idiomaDaCatalogacao: entradaLivroController.$b_idiomaDaCatalogacaoFonteCatalogadoraController,
                  $c_agenciaQueTranscreveORegistro: entradaLivroController.$c_agenciaQueTranscreveORegistroFonteCatalogadoraController,
                  $d_agenciaQueAlterouORegistro: entradaLivroController.$d_agenciaQueAlterouORegistroFonteCatalogadoraController,
                  $e_fontesConvencionaisDeDescricaoDeDados: entradaLivroController.$e_fontesConvencionaisDeDescricaoDeDadosFonteCatalogadoraController,
                  $6_ligacao: entradaLivroController.$6_ligacaoFonteCatalogadoraController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaFonteCatalogadoraController,
                ),
                const SizedBox(height: 16.0),
                NumeroDeClassificacaoDecimalUniversalPanel(
                  etiqueta: entradaLivroController.etiquetaNumeroClassificacaoUniversalController..text = '080', 
                  primeiroIndicador: entradaLivroController.primeiroIndicadorNumeroClassificacaoUniversalController, 
                  segundoIndicador: entradaLivroController.segundoIndicadorNumeroClassificacaoUniversalController, 
                  $a_numeroDeClassificacao: entradaLivroController.$a_numeroDeClassificacaoNumeroClassificacaoUniversalController, 
                  $b_numeroDoItem: entradaLivroController.$b_numeroDoItemNumeroClassificacaoUniversalController, 
                  $x_subdivisaoAuxiliarComum: entradaLivroController.$x_subdivisaoAuxiliarComumNumeroClassificacaoUniversalController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaLivroController.$0_numeroDeControleDoRegistroDeAutoridadeNumeroClassificacaoUniversalController, 
                  $2_numeroDaEdicao: entradaLivroController.$2_numeroDaEdicaoNumeroClassificacaoUniversalController, 
                  $6_ligacao: entradaLivroController.$6_ligacaoNumeroClassificacaoUniversalController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaNumeroClassificacaoUniversalController,
                ),
                const SizedBox(height: 16.0),
                NumeroDeChamadaLocalPanel(
                  etiqueta: entradaLivroController.etiquetaNumeroDeChamadaLocalController..text = '090', 
                  primeiroIndicador: entradaLivroController.primeiroIndicadorNumeroDeChamadaLocalController, 
                  segundoIndicador: entradaLivroController.segundoIndicadorNumeroDeChamadaLocalController, 
                  $a_classificacao: entradaLivroController.$a_classificacaoNumeroDeChamadaLocalController, 
                  $b_numeroDeCutter: entradaLivroController.$b_numeroDeCutterNumeroDeChamadaLocalController, 
                  onPressedCutter: () async {
                    await context.read<EntradaLivroController>().getCutter(nome: entradaLivroController.$b_numeroDeCutterNumeroDeChamadaLocalController.text)
                    .then((response) {
                      return entradaLivroController.$b_numeroDeCutterNumeroDeChamadaLocalController.text = response.codigoRetorno;
                    });
                  },
                  $c_tipoDeObra: entradaLivroController.$c_tipoDeObraNumeroDeChamadaLocalController, 
                  $d_anoDePublicacao: entradaLivroController.$d_anoDePublicacaoNumeroDeChamadaLocalController,
                  $8_unidadeCatalogadora: entradaLivroController.$8_unidadeCatalogadoraNumeroDeChamadaLocalController,
                  siglaInstituicao: entradaLivroController.siglaInstituicaoNumeroDeChamadaLocalController,
                ),
                const SizedBox(height: 16.0),
                NomePessoalPanel(
                  etiqueta: entradaLivroController.etiquetaNomePessoalController..text = '100',
                  primeiroIndicador: entradaLivroController.primeiroIndicadorNomePessoalController,
                  segundoIndicador: entradaLivroController.segundoIndicadorNomePessoalController,
                  $a_nomePessoal:entradaLivroController.$a_nomePessoalNomePessoalController,
                  $b_algarismosRomanosQueSeguemPrenome: entradaLivroController.$b_algarismosRomanosQueSeguemPrenomeNomePessoalController,
                  $c_titulosEOutrasPalavrasAssociadasAoNome: entradaLivroController.$c_titulosEOutrasPalavrasAssociadasAoNomeNomePessoalController,
                  $d_datasAssociadasAoNome: entradaLivroController.$d_datasAssociadasAoNomeNomePessoalController,
                  $e_termoDeRelacao: entradaLivroController.$e_termoDeRelacaoNomePessoalController,
                  $f_dataDaPublicacaoDoTrabalho: entradaLivroController.$f_dataDaPublicacaoDoTrabalhoNomePessoalController,
                  $g_informacoesAdicionais: entradaLivroController.$g_informacoesAdicionaisNomePessoalController,
                  $j_atributoQualificador: entradaLivroController.$j_atributoQualificadorNomePessoalController,
                  $k_subcabecalho:entradaLivroController.$k_subcabecalhoNomePessoalController,
                  $l_idiomaDaPublicacao: entradaLivroController.$l_idiomaDaPublicacaoNomePessoalController,
                  $n_numeroDaSecaoDaPublicacao: entradaLivroController.$n_numeroDaSecaoDaPublicacaoNomePessoalController,
                  $p_nomeDaSecaoDaPublicacao: entradaLivroController.$p_nomeDaSecaoDaPublicacaoNomePessoalController,
                  $q_formaCompletaDoNome: entradaLivroController.$q_formaCompletaDoNomeNomePessoalController,
                  $t_tituloDaPublicacao: entradaLivroController.$t_tituloDaPublicacaoNomePessoalController,
                  $u_afiliacao:entradaLivroController.$u_afiliacaoNomePessoalController,
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaLivroController.$0_numeroDeControleDoRegistroDeAutoridadeNomePessoalController,
                  $4_relacao:entradaLivroController.$4_relacaoNomePessoalController,
                  $6_ligacao:entradaLivroController.$6_ligacaoNomePessoalController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaNomePessoalController,
                ),
                const SizedBox(height: 16.0),
                TituloOriginalPanel(
                  etiqueta: entradaLivroController.etiquetaTituloOriginalController..text = '240', 
                  primeiroIndicador: entradaLivroController.primeiroIndicadorTituloOriginalController, 
                  segundoIndicador: entradaLivroController.segundoIndicadorTituloOriginalController, 
                  $a_tituloUniforme: entradaLivroController.$a_tituloUniformeTituloOriginalController, 
                  $d_dataDaAssinaturaDoTratado: entradaLivroController.$d_dataDaAssinaturaDoTratadoTituloOriginalController, 
                  $f_dataDaPublicacaoDoTrabalho: entradaLivroController.$f_dataDaPublicacaoDoTrabalhoTituloOriginalController, 
                  $g_informacaoesAdicionais: entradaLivroController.$g_informacaoesAdicionaisTituloOriginalController, 
                  $h_meioDGM: entradaLivroController.$h_meioDGMTituloOriginalController, 
                  $k_subcabecalho: entradaLivroController.$k_subcabecalhoTituloOriginalController, 
                  $l_idiomaDaPublicacao: entradaLivroController.$l_idiomaDaPublicacaoTituloOriginalController, 
                  $m_meioDeExecucaoParaMusica: entradaLivroController.$m_meioDeExecucaoParaMusicaTituloOriginalController, 
                  $n_numeroDaSecaoDaPublicacao: entradaLivroController.$n_numeroDaSecaoDaPublicacaoTituloOriginalController, 
                  $o_arranjoMusical: entradaLivroController.$o_arranjoMusicalTituloOriginalController, 
                  $p_nomeDaSecaoDePublicacao: entradaLivroController.$p_nomeDaSecaoDePublicacaoTituloOriginalController, 
                  $r_escalaMusical: entradaLivroController.$r_escalaMusicalTituloOriginalController, 
                  $s_versao: entradaLivroController.$s_versaoTituloOriginalController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaLivroController.$0_numeroDeControleDoRegistroDeAutoridadeTituloOriginalController, 
                  $6_ligacao: entradaLivroController.$6_ligacaoTituloOriginalController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaTituloOriginalController,
                ),
                const SizedBox(height: 16.0),
                TituloPrincipalPanel(
                  etiqueta:entradaLivroController.etiquetaTituloPrincipalController..text = '245',
                  primeiroIndicador: entradaLivroController.primeiroIndicadorTituloPrincipalController,
                  segundoIndicador: entradaLivroController.segundoIndicadorTituloPrincipalController,
                  $a_tituloPrincipal: entradaLivroController.$a_tituloPrincipalTituloPrincipalController,
                  $b_subtitulo: entradaLivroController.$b_subtituloTituloPrincipalController,
                  $c_indicacaoDeResponsabilidade: entradaLivroController.$c_indicacaoDeResponsabilidadeTituloPrincipalController,
                  $f_datasDeAbrangencia: entradaLivroController.$f_datasDeAbrangenciaTituloPrincipalController,
                  $g_conjuntoDeDatas: entradaLivroController.$g_conjuntoDeDatasTituloPrincipalController,
                  $h_meioDGM:entradaLivroController.$h_meioDGMTituloPrincipalController,
                  $k_formaDoMaterial: entradaLivroController.$k_formaDoMaterialTituloPrincipalController,
                  $n_numeroDaSecaoDaPublicacao: entradaLivroController.$n_numeroDaSecaoDaPublicacaoTituloPrincipalController,
                  $p_nomeDaSecaoDaPublicacao: entradaLivroController.$p_nomeDaSecaoDaPublicacaoTituloPrincipalController,
                  $s_versao:entradaLivroController.$s_versaoTituloPrincipalController,
                  $6_ligacao:entradaLivroController.$6_ligacaoTituloPrincipalController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaTituloPrincipalController,
                ),
                const SizedBox(height: 16.0),
                EdicaoPanel(
                  etiqueta: entradaLivroController.etiquetaEdicaoController..text = '250', 
                  primeiroIndicador: entradaLivroController.primeiroIndicadorEdicaoController, 
                  segundoIndicador: entradaLivroController.segundoIndicadorEdicaoController, 
                  $a_edicao: entradaLivroController.$a_edicaoEdicaoController, 
                  $b_outrasInformacoesSobreEdicao: entradaLivroController.$b_outrasInformacoesSobreEdicaoEdicaoController, 
                  $3_materialEspecificado: entradaLivroController.$3_materialEspecificadoEdicaoController, 
                  $6_ligacao: entradaLivroController.$6_ligacaoEdicaoController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaEdicaoController,
                ),
                const SizedBox(height: 16.0),
                ImprentaPanel(
                  etiqueta: entradaLivroController.etiquetaImprentaController..text = '260',
                  primeiroIndicador:entradaLivroController.primeiroIndicadorImprentaController,
                  segundoIndicador:entradaLivroController.segundoIndicadorImprentaController,
                  $a_lugarDePublicacao: entradaLivroController.$a_lugarDePublicacaoImprentaController,
                  $b_nomeDoEditor:entradaLivroController.$b_nomeDoEditorImprentaController,
                  $c_dataDePublicacao: entradaLivroController.$c_dataDePublicacaoImprentaController,
                  $e_lugarDeFabricacao: entradaLivroController.$e_lugarDeFabricacaoImprentaController,
                  $f_nomeDoFabricante: entradaLivroController.$f_nomeDoFabricanteImprentaController,
                  $g_dataDeFabricacao: entradaLivroController.$g_dataDeFabricacaoImprentaController,
                  $3_materialEspecificado: entradaLivroController.$3_materialEspecificadoImprentaController,
                  $6_ligacao: entradaLivroController.$6_ligacaoImprentaController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaImprentaController,
                ),
                const SizedBox(height: 16.0),
                DescricaoFisicaPanel(
                  etiqueta:entradaLivroController.etiquetaDescricaoFisicaController..text = '300',
                  primeiroIndicador: entradaLivroController.primeiroIndicadorDescricaoFisicaController,
                  segundoIndicador: entradaLivroController.segundoIndicadorDescricaoFisicaController,
                  $a_extensao:entradaLivroController.$a_extensaoDescricaoFisicaController,
                  $b_detalhesFisicosAdicionais: entradaLivroController.$b_detalhesFisicosAdicionaisDescricaoFisicaController,
                  $c_dimensoes: entradaLivroController.$c_dimensoesDescricaoFisicaController,
                  $e_materialAdicional: entradaLivroController.$e_materialAdicionalDescricaoFisicaController,
                  $f_tipoDeUnidade: entradaLivroController.$f_tipoDeUnidadeDescricaoFisicaController,
                  $g_tamanhoDaUnidade: entradaLivroController.$g_tamanhoDaUnidadeDescricaoFisicaController,
                  $3_materialEspecificado: entradaLivroController.$3_materialEspecificadoDescricaoFisicaController,
                  $6_ligacao:entradaLivroController.$6_ligacaoDescricaoFisicaController,
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaDescricaoFisicaController,
                ),
                const SizedBox(height: 16.0),
                TopicoPanel(
                  etiqueta: entradaLivroController.etiquetaTopicoController..text = '650', 
                  primeiroIndicador: entradaLivroController.primeiroIndicadorTopicoController, 
                  segundoIndicador: entradaLivroController.segundoIndicadorTopicoController, 
                  $a_cabecalhoTopicoOuNomeGeografico: entradaLivroController.$a_cabecalhoTopicoOuNomeGeograficoTopicoController, 
                  $b_cabecalhoTopicoSeguindoNomeGeografico: entradaLivroController.$b_cabecalhoTopicoSeguindoNomeGeograficoTopicoController, 
                  $c_localDoEvento: entradaLivroController.$c_localDoEventoTopicoController, 
                  $d_dataDeRealizacaoDoEvento: entradaLivroController.$d_dataDeRealizacaoDoEventoTopicoController, 
                  $e_termoDeRelacao: entradaLivroController.$e_termoDeRelacaoTopicoController, 
                  $g_informacoesAdicionais: entradaLivroController.$g_informacoesAdicionaisTopicoController, 
                  $v_subdivisaoDeForma: entradaLivroController.$v_subdivisaoDeFormaTopicoController, 
                  $x_subdivisaoGeral: entradaLivroController.$x_subdivisaoGeralTopicoController, 
                  $y_subdivisaoCronologica: entradaLivroController.$y_subdivisaoCronologicaTopicoController, 
                  $z_subdivisaoGeografica: entradaLivroController.$z_subdivisaoGeograficaTopicoController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaLivroController.$0_numeroDeControleDoRegistroDeAutoridadeTopicoController, 
                  $2_fonteDoCabecalhoOuTermo: entradaLivroController.$2_fonteDoCabecalhoOuTermoTopicoController, 
                  $3_materialEspecificado: entradaLivroController.$3_materialEspecificadoTopicoController, 
                  $4_relacao: entradaLivroController.$4_relacaoTopicoController, 
                  $6_ligacao: entradaLivroController.$6_ligacaoTopicoController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaTopicoController,
                ),
                const SizedBox(height: 16.0),
                NomePessoalSecundariaPanel(
                  etiqueta: entradaLivroController.etiquetaEntradaSecundariaNomePessoalController..text = '700', 
                  primeiroIndicador: entradaLivroController.primeiroIndicadorEntradaSecundariaNomePessoalController, 
                  segundoIndicador: entradaLivroController.segundoIndicadorEntradaSecundariaNomePessoalController, 
                  $a_nomePessoal: entradaLivroController.$a_nomePessoalEntradaSecundariaNomePessoalController, 
                  $b_algarismosRomanosQueSeguemOPrenome: entradaLivroController.$b_algarismosRomanosQueSeguemOPrenomeEntradaSecundariaNomePessoalController, 
                  $c_titulosEOutrasPalavrasAssociadasAoNome: entradaLivroController.$c_titulosEOutrasPalavrasAssociadasAoNomeEntradaSecundariaNomePessoalController, 
                  $d_datasAssociadasAoNome: entradaLivroController.$d_datasAssociadasAoNomeEntradaSecundariaNomePessoalController, 
                  $e_termoDeRelacao: entradaLivroController.$e_termoDeRelacaoEntradaSecundariaNomePessoalController, 
                  $f_dataDaPublicacaoDoTrabalho: entradaLivroController.$f_dataDaPublicacaoDoTrabalhoEntradaSecundariaNomePessoalController, 
                  $g_informacoesAdicionais: entradaLivroController.$g_informacoesAdicionaisEntradaSecundariaNomePessoalController, 
                  $h_meioDGM: entradaLivroController.$h_meioDGMEntradaSecundariaNomePessoalController, 
                  $i_informacoesSobreRelacoes: entradaLivroController.$i_informacoesSobreRelacoesEntradaSecundariaNomePessoalController, 
                  $j_atributo: entradaLivroController.$j_atributoEntradaSecundariaNomePessoalController, 
                  $k_subcabecalhos: entradaLivroController.$k_subcabecalhosEntradaSecundariaNomePessoalController, 
                  $l_idiomaDaPublicacao: entradaLivroController.$l_idiomaDaPublicacaoEntradaSecundariaNomePessoalController, 
                  $m_instrumentosMusicais: entradaLivroController.$m_instrumentosMusicaisEntradaSecundariaNomePessoalController, 
                  $n_numeroDaSecaoDaPublicacao: entradaLivroController.$n_numeroDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController, 
                  $o_arranjoMusical: entradaLivroController.$o_arranjoMusicalEntradaSecundariaNomePessoalController, 
                  $p_nomeDaSecaoDaPublicacao: entradaLivroController.$p_nomeDaSecaoDaPublicacaoEntradaSecundariaNomePessoalController, 
                  $q_formaCompletaDoNome: entradaLivroController.$q_formaCompletaDoNomeEntradaSecundariaNomePessoalController, 
                  $r_escalaMusical: entradaLivroController.$r_escalaMusicalEntradaSecundariaNomePessoalController, 
                  $s_versao: entradaLivroController.$s_versaoEntradaSecundariaNomePessoalController, 
                  $t_tituloDaPublicacao: entradaLivroController.$t_tituloDaPublicacaoEntradaSecundariaNomePessoalController, 
                  $u_afiliacao: entradaLivroController.$u_afiliacaoEntradaSecundariaNomePessoalController, 
                  $x_ISSN: entradaLivroController.$x_ISSNEntradaSecundariaNomePessoalController, 
                  $0_numeroDeControleDoRegistroDeAutoridade: entradaLivroController.$0_numeroDeControleDoRegistroDeAutoridadeEntradaSecundariaNomePessoalController, 
                  $3_materialEspecificado: entradaLivroController.$3_materialEspecificadoEntradaSecundariaNomePessoalController, 
                  $4_relacao: entradaLivroController.$4_relacaoEntradaSecundariaNomePessoalController, 
                  $5_codigoDaInstituicao: entradaLivroController.$5_codigoDaInstituicaoEntradaSecundariaNomePessoalController, 
                  $6_ligacao: entradaLivroController.$6_ligacaoEntradaSecundariaNomePessoalController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaEntradaSecundariaNomePessoalController,
                ),
                const SizedBox(height: 16.0),
                LocalizacaoEAcessoEletronicoPanel(
                  etiqueta_856: entradaLivroController.etiquetaLocalizacaoEAcessoController..text = '856', 
                  primeiroIndicador: entradaLivroController.primeiroIndicadorLocalizacaoEAcessoController, 
                  segundoIndicador: entradaLivroController.segundoIndicadorLocalizacaoEAcessoController, 
                  $a_nomeDoServidor: entradaLivroController.$a_nomeDoServidorLocalizacaoEAcessoController, 
                  $b_numeroDoAcesso: entradaLivroController.$b_numeroDoAcessoLocalizacaoEAcessoController, 
                  $c_informacoesSobreCompactacao: entradaLivroController.$c_informacoesSobreCompactacaoLocalizacaoEAcessoController, 
                  $d_caminho: entradaLivroController.$d_caminhoLocalizacaoEAcessoController, 
                  $f_nomeDoArquivoEletronico: entradaLivroController.$f_nomeDoArquivoEletronicoLocalizacaoEAcessoController, 
                  $h_username: entradaLivroController.$h_usernameLocalizacaoEAcessoController, 
                  $i_instrucao: entradaLivroController.$i_instrucaoLocalizacaoEAcessoController, 
                  $j_bitsPorSegundo: entradaLivroController.$j_bitsPorSegundoLocalizacaoEAcessoController, 
                  $k_password: entradaLivroController.$k_passwordLocalizacaoEAcessoController, 
                  $l_login: entradaLivroController.$l_loginLocalizacaoEAcessoController, 
                  $m_contatoParaObterAjuda: entradaLivroController.$m_contatoParaObterAjudaLocalizacaoEAcessoController, 
                  $n_nomeDaLocalizacaoDoServidor: entradaLivroController.$n_nomeDaLocalizacaoDoServidorLocalizacaoEAcessoController, 
                  $o_sistemaOperativo: entradaLivroController.$o_sistemaOperativoLocalizacaoEAcessoController, 
                  $p_porta: entradaLivroController.$p_portaLocalizacaoEAcessoController, 
                  $q_tipoDoFormatoEletronico: entradaLivroController.$q_tipoDoFormatoEletronicoLocalizacaoEAcessoController, 
                  $r_configuracao: entradaLivroController.$r_configuracaoLocalizacaoEAcessoController, 
                  $s_tamanhoDoArquivo: entradaLivroController.$s_tamanhoDoArquivoLocalizacaoEAcessoController, 
                  $t_emulacaoDeTerminal: entradaLivroController.$t_emulacaoDeTerminalLocalizacaoEAcessoController, 
                  $u_identificadorUniformeDeRecursoURI: entradaLivroController.$u_identificadorUniformeDeRecursoURILocalizacaoEAcessoController, 
                  $v_horarioDeAcesso: entradaLivroController.$v_horarioDeAcessoLocalizacaoEAcessoController, 
                  $w_numeroDeControleDeUmRegistro: entradaLivroController.$w_numeroDeControleDeUmRegistroLocalizacaoEAcessoController, 
                  $x_notaInterna: entradaLivroController.$x_notaInternaLocalizacaoEAcessoController, 
                  $y_textoDoLink: entradaLivroController.$y_textoDoLinkLocalizacaoEAcessoController, 
                  $z_notaDoPublico: entradaLivroController.$z_notaDoPublicoLocalizacaoEAcessoController, 
                  $2_metodoDeAcesso: entradaLivroController.$2_metodoDeAcessoLocalizacaoEAcessoController, 
                  $3_materialEspecificado: entradaLivroController.$3_materialEspecificadoLocalizacaoEAcessoController, 
                  $6_ligacao: entradaLivroController.$6_ligacaoLocalizacaoEAcessoController, 
                  $8_campoDeLigacaoENumeroDeSequencia: entradaLivroController.$8_campoDeLigacaoENumeroDeSequenciaLocalizacaoEAcessoController,
                ),
                const SizedBox(height: 16.0),
                // BOTÕES SALVAR E CANCELAR
                entradaLivroController.isLoading ? const Center(child: CircularProgressIndicator()) : Align(
                  alignment: Alignment.bottomRight,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:  Row(
                      children: [
                        //BOTÃO SALVAR
                        CustomElevatedButtonWidget(
                          titulo: 'Salvar',
                          cor: ClassAppColors.verde,
                          icone: Icons.save_rounded,
                          onPressed: () async {
                            await context.read<EntradaLivroController>().setLivro().then((response) {
                              if(response.codigoRetorno == "201"){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBarWidget(cor: ClassAppColors.verde, mensagem: response.mensagem, largura: size.width * 0.37, altura: size.height * 0.45)
                                );
                                context.read<EntradaLivroController>().limparControllersSetLivro();
                                entradaLivroController.isCheck = false;
                                Navigator.pop(context);
                              } else {
                                 ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBarWidget(cor: ClassAppColors.vermelho, mensagem: 'Falha ao salvar livro!', largura: size.width * 0.37, altura: size.height * 0.45)
                                );
                              }
                            });
                          },
                        ),
                        const SizedBox(width: 16.0),
                        //BOTÃO CANCELAR
                        CustomElevatedButtonWidget(
                          titulo: 'Cancelar',
                          cor: ClassAppColors.vermelho,
                          icone: Icons.cancel_rounded,
                          onPressed: () {
                            context.read<EntradaLivroController>().limparControllersSetLivro();
                            Navigator.pop(context);
                          },
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
