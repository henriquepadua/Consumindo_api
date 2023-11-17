import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class nossoWidget extends StatelessWidget {
  final _bloc = NossoBloc();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: _bloc.saida,
        builder: (context, snapshot) {
          return Scaffold(
              body: Center(
                  child: Text("${snapshot.data}")
              )
          );
        }
    );
  }
}