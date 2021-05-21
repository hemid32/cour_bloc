

import 'package:flutter_bloc/flutter_bloc.dart';

import 'event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  /// {@macro counter_bloc}
  CounterBloc() : super(10);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.error:
        addError(Exception('unsupported event'));
    }
  }
}
