import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterInitial());

  

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    yield (state is CounterInitial) 
      ? CounterBlocState(0) 
      : CounterBlocState((state as CounterBlocState).value + 1);
  }

}

