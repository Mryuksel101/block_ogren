
import 'package:bloc/bloc.dart';

import 'listeye_ekle_events.dart';
import 'listeye_ekle_status.dart';
// Bloc<Event, State>  girdiğimiz event ve durumun içindekilere bu keywordler ile ulaşabilirsin

class ListeyeEkleBlocs extends Bloc<ListeyeEkleEvents, People>{
  ListeyeEkleBlocs():super(InitialState()){
    on<ListeyeEkleEventi>(
      (event, emit) {
        listeyeEkle(event);
      }
    );

    on<ListedenCikartEventi>(
      (event, emit) {
        listedenCikart(event);
      }
    );
  }

  void listeyeEkle(ListeyeEkleEventi event){
    final list = state.kullaniciSecimi;
    list.add(event.statem);
    return emit(
      People(
        kullaniciSecimi: list
      )
    );
    
  }

  void listedenCikart(ListedenCikartEventi event){
    final list = state.kullaniciSecimi;
    list.remove(event.cikartilacak);
    return emit(
      People(
        kullaniciSecimi: list
      )
    );
  }


}