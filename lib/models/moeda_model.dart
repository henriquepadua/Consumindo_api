import '../models/moeda_model.dart';
class MoedaModel{
  final String name;
  final String code;

  const MoedaModel({
    required this.name,
    required this.code,
  });

  factory MoedaModel.init(){
   return const MoedaModel(name: '', code: '');
  }

  @override
  List<Object?> get props => [name,code];
}