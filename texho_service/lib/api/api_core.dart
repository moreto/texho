import 'hosts.dart';

enum ApiCore {
  rotulosByLocale('/api/v1/rotulo', kDesHost, kHmHost, kPrdHost, false),
  configByAtributo('/api/v1/config/get-by-atributo', kDesHost, kHmHost, kPrdHost, false),
  acessoLogin('/api/v1/acesso/login', kDesHost, kHmHost, kPrdHost, false),
  usuarioComplemento('/api/v1/usuario-complemento', kDesHost, kHmHost, kPrdHost, true),
  usuarioComplementoValidaCodigo('/api/v1/usuario-complemento/valida-codigo', kDesHost, kHmHost, kPrdHost, true),
  usuarioComplementoHabilita('/api/v1/usuario-complemento/habilita', kDesHost, kHmHost, kPrdHost, true),
  usuarioComplementoUsuaId('/api/v1/usuario-complemento-usuaid', kDesHost, kHmHost, kPrdHost, true),
  usuarioComplementoUsuaEmail('/api/v1/usuario-complemento-usuaemail', kDesHost, kHmHost, kPrdHost, true),

  // financeiro
  moeda('/api/v1/moeda', kDesHost, kHmHost, kPrdHost, false),
  banco('/api/v1/banco', kDesHost, kHmHost, kPrdHost, false),
  contaDto('/api/v1/conta-dto', kDesHost, kHmHost, kPrdHost, true),
  lancamento('/api/v1/lancamento', kDesHost, kHmHost, kPrdHost, true),
  lancamentoDtoList('/api/v1/lancamento-dto-list', kDesHost, kHmHost, kPrdHost, true),
  classificacao('/api/v1/classificacao', kDesHost, kHmHost, kPrdHost, true),
  classificacaoDC('/api/v1/classificacao-dc', kDesHost, kHmHost, kPrdHost, true),
  classificacaoSub('/api/v1/classificacao-sub', kDesHost, kHmHost, kPrdHost, true),
  classificacaoClassificacacaoSub('/api/v1/classificacao-classificacao-sub', kDesHost, kHmHost, kPrdHost, true),

  // Abastecimento
  veiculos('/api/v1/veiculo/get-by-usuaid', kDesHost, kHmHost, kPrdHost, true),
  combustiveis('/api/v1/combustiveis', kDesHost, kHmHost, kPrdHost, true),
  // cnpjList('/api/v1/postos',  kDesHost, kHmHost, kPrdHost, true),
  // cnpjPut('/api/v1/posto',  kDesHost, kHmHost, kPrdHost, true),
  abastecimento('/api/v1/abastecimento', kDesHost, kHmHost, kPrdHost, true),
  ;

  const ApiCore(this.endpoint, this.des, this.hm, this.prd, this.isLogged);
  final String endpoint;
  final String des;
  final String hm;
  final String prd;
  final bool isLogged;
}
