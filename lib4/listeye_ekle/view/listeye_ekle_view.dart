import 'dart:developer';

import '../../../lib4/listeye_ekle/view/listem_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../block/listeye_ekle_blocs.dart';
import '../block/listeye_ekle_events.dart';
import '../block/listeye_ekle_status.dart';

class ListeyeEkleView extends StatelessWidget {
  const ListeyeEkleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("ListeyeEkleView build edildi");

    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Listeye Ekle"),
      ),

      body: BlocBuilder<ListeyeEkleBlocs, People>(
        
        builder: (context, state) {
          log("BlocBuilder return ListeyeEkleView deki");
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.greatPeople.length,
                  itemBuilder: (context, index) {
                    return TextButton(
                      onPressed: () {
                        context.read<ListeyeEkleBlocs>().add(ListeyeEkleEventi(state.greatPeople[index]));
                      },
                      child: Text(state.greatPeople[index])
                    );
                  },
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: state.kullaniciSecimi.length,
                  itemBuilder: (context, index) {
                    return Text(state.kullaniciSecimi[index]);
                  },
                ),
              ),

              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    
                    builder: (_) {
                      
                      return BlocProvider.value(
                        value: BlocProvider.of<ListeyeEkleBlocs>(context, listen: false),
                        child: const ListemView(),
                      );


                    },
                  )
                ),
                child: const Text("Listemi göster"),
              )
            ],
          );
        },
      )
    );
  }
}