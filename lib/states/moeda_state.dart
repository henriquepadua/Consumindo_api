import '../models/moeda_model.dart';

class MoedaState{
  final List<MoedaModel> moedas;

  final MoedaModel moedaIn;
  final MoedaModel moedaOut;

  final String result;

  MoedaState({
    required this.moedas,
    required this.moedaIn,
    required this.moedaOut,
    required this.result
  });

  factory MoedaState.init(){
    return MoedaState(
      moedaIn: MoedaModel.init(),
      moedaOut: MoedaModel.init(),
      moedas: const [],
      result: '0',
    );
  }
}