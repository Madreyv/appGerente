import 'package:app_gerente/Models/cliente.dart';
import 'package:app_gerente/Models/servicos.dart';

final DUMMY_SERVICOS = [
  Servicos(
    id: 's1',
    cliente: 'Fajelog',
    problemaRelatado: 'Impressora agarrando muito papel.',
    parecerTecnico: 'Unidade fusora aquecendo demais o papel',
    solucao: 'Troca da unidade fusora',
    sugestaoDeMelhoria:
        'Verificar o tempo de troca da unidade fusora para ver ser vale a pena a compra de uma impressora nova',
    status: "Aguardando peça",
    inicio: null,
    fim: null,
  ),
  Servicos(
    id: 's2',
    cliente: "Curvelo Transportes",
    problemaRelatado: 'Internet Lenta',
    parecerTecnico: 'Saturação de link',
    solucao: 'Bloqueio de sites descenessários ao serviço',
    status: "finalizado",
    sugestaoDeMelhoria: null,
    inicio: null,
    fim: null,
  ),
  Servicos(
    id: 's3',
    cliente: "Curvelo Tranportes",
    problemaRelatado: 'Ponto de rede apresentando intermitência',
    parecerTecnico: 'Cabo de rede rompido',
    solucao: 'Corte e crimpagem do cabo de rede',
    sugestaoDeMelhoria: 'Colocar os cabos de forma que não se movimentem tanto',
    status: "finalizado",
    inicio: null,
    fim: null,
  ),
  Servicos(
    id: 's4',
    cliente: "CTBA Contabilidade",
    problemaRelatado: 'Alguns usuários estão sem internet',
    parecerTecnico: 'Switch em curto',
    solucao: 'Troca do Switch',
    sugestaoDeMelhoria: "Colocar o Switch no noBreak",
    status: "Aberto",
    inicio: null,
    fim: null,
  ),
  Servicos(
    id: 's5',
    cliente: "Fajelog",
    problemaRelatado: 'Manutenção Preventiva',
    parecerTecnico: 'Computador não problemas',
    sugestaoDeMelhoria: null,
    solucao: 'Realizado Manutenção preventiva',
    status: "Aberto",
    inicio: null,
    fim: null,
  ),
  Servicos(
    id: 's6',
    cliente: "TNF - Serviços de Transportes",
    problemaRelatado: 'Computador apresentando lentidão',
    parecerTecnico: 'Hardware ultrapassado',
    solucao: "Realizada limpeza remoção de programas desnecessários",
    sugestaoDeMelhoria:
        'Na impossibilidade da troca do computador, realizar a troca do HD por um ssd',
    status: "Aguardando peça",
    inicio: null,
    fim: null,
  ),
];

final DUMMT_CLIENTES = [
  Cliente(
    cnpj: '35.788.272/0001-82',
    nome: 'Curvelo Transportes',
    apelido: 'Curvelo',
    imagemURL: 'http://www.curvelotransportes.com.br/images/segundo-logo.png',
  ),
  Cliente(
    cnpj: '08.628.218/0001-05',
    nome: 'FAJE Logística',
    apelido: 'Faje',
    imagemURL: 'http://www.fajelog.com.br/images/logo.png',
  ),
  Cliente(
    cnpj: '30.411.573/0001-79',
    nome: 'TNF TRANSPORTES E GUINDASTES',
    apelido: 'TNF',
    imagemURL: 'http://www.tnf.com.br/img/logos/logo.png',
  ),
];
