


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/conter_bloc.dart';

class Screens extends StatefulWidget {
  @override
  _ScreensState createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  void dispose() {
    // TODO: implement dispose
    BlocProvider.of<CounterBloc>(context).close() ;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Center(
            child: Text('${BlocProvider.of<CounterBloc>(context).state}', style: Theme.of(context).textTheme.headline1),

      ),


    );

  }
}
