import 'dart:convert';

import 'package:http/http.dart';

import 'package:consumindo_api/models/moeda_model.dart';

class MoedaRepository{
  final client = Client();

  Future<double> cotacao(MoedaModel moedaIn,MoedaModel moedaOut) async{
    final search = '${moedaIn.code}-${moedaOut.code}';

    final response = await client .get(Uri.parse('https://economia.awesomeapi.com.bt/json/last/$search'));
    final jsowRaw = response.body;
    return parseCotacao(jsowRaw,search);
  }

  double parseCotacao(String jsonRaw,String search){
    search = search.replaceFirst('-', '');
    final json = jsonDecode(jsonRaw);
    final model = json[search];
    final cotacao = model['bid'];
    return double.parse(cotacao);
  }
}