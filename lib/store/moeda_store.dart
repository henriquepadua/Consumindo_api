import 'dart:async';
import 'dart:async';
import 'dart:async';
import 'dart:async';
import 'dart:core';

import 'package:consumindo_api/models/moeda_model.dart';
import 'package:consumindo_api/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';
import '../states/moeda_state.dart';

class MoedaStore extends ValueNotifier<MoedaState>{
  final repository = MoedaRepository();

  MoedaStore() : super(MoedaState.init());

  Future<void> getMoedas() async {}

  Future<void> converter(String valorRaw) async {
    final cotacao = await repository.cotacao(value.moedaIn,value.moedaOut);

    final valor = double.parse(valorRaw);
    final resultado = valor * cotacao;

    value = value.copyWith(result: resultado.toStringAsFixed(2));
  }

  Future<void> selecionarMoedaIn(MoedaModel model) async{
    value = value.copyWith(moedaIn: model);
  }

  Future<void> selecionarMoedaOut(MoedaModel model) async{
    value = value.copyWith(moedaOut: model);
  }
}