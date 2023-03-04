import 'dart:developer';

import '../../../lib5/counter/bloc/counter_event.dart';
import '../../../lib5/counter/bloc/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState>{
  CounterBloc() : super(InitialState()){
    log("CounterBloc counstructer i calişti");
    
    on<ListeyeEkle>(
      (event, emit) {
        final anlikListe = state.kullanicininSectikleri;
        anlikListe.add(event.eklenecek);
        emit(
          CounterState(kullanicininSectikleri: anlikListe),
        );
      },
    );

    on<ListedenCikart>(
      (event, emit){
        
      }
    );

    
  }
 

}