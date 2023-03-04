import 'dart:developer';

import '../../../lib4/listeye_ekle/block/listeye_ekle_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../block/listeye_ekle_blocs.dart';
import '../block/listeye_ekle_status.dart';

class ListemView extends StatelessWidget {
  const ListemView({super.key});

  

  @override
  Widget build(BuildContext context) {
     log("widget build çalıştı ListeyeEkleView deki");
    return Scaffold(
      body: BlocBuilder<ListeyeEkleBlocs, People>(
        builder: (context, state) {
          log("BlocBuilder çalıştı ListeyeEkleView deki");
          return ListView.builder(
    
            itemCount:state.kullaniciSecimi.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Text(state.kullaniciSecimi[index]),
                  TextButton(
                    onPressed: () {
                      context.read<ListeyeEkleBlocs>().add(
                        ListedenCikartEventi(state.kullaniciSecimi[index])
                      );
                    },
                    child: const Text("çıkart"),
                  ),
                ],
              ); 
              
            },
          );
        },
      ),
    );
  }
}