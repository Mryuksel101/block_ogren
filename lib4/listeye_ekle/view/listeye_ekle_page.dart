import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../block/listeye_ekle_blocs.dart';
import 'listeye_ekle_view.dart';

class ListeyeEkle extends StatelessWidget {
  const ListeyeEkle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("ListeyeEkle widget buildi");
    return BlocProvider<ListeyeEkleBlocs>(
      create: (context) {
        return ListeyeEkleBlocs();
      },

      child: const ListeyeEkleView(),
    );
  }
}