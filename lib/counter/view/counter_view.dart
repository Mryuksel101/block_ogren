import 'dart:developer';

import 'package:block_ogren/counter/bloc/counter_bloc.dart';
import 'package:block_ogren/counter/bloc/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_event.dart';
import 'counter_view2.dart';


class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    log("CounterView widget build calişti");
    return Scaffold(
      
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        elevation: 2,
        title: const Text("sayaç uygulamam"),
      ),

      body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          Expanded(
            child: ListView.builder(
              itemCount: context.read<CounterBloc>().state.isimler.length,
              itemBuilder: (context, index) {
                
                return TextButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(
                      ListeyeEkle(eklenecek: context.read<CounterBloc>().state.isimler[index]),
                    );
                  },
                  child: Text(context.read<CounterBloc>().state.isimler[index])
                );
              },
            ),
          ),

          Expanded(
            child: BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                log("bloc builder calişti");
                return Builder(
                  builder: (context) {
                    return ListView.builder(
                      itemCount: context.read<CounterBloc>().state.kullanicininSectikleri.length,
                      itemBuilder: (context, index) {
                        return Text(context.read<CounterBloc>().state.kullanicininSectikleri[index]);
                      },
                    ); 
                  },
                 
                );
              },
              
            ),
          ),

          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return BlocProvider.value(
                      value: BlocProvider.of<CounterBloc>(context, listen: false),
                      child: const CounterView2(),
                    );
                  },
                )
              );
            },
            icon: const Icon(
              Icons.keyboard_arrow_right_outlined
            ),
            label: const Text("sonraki sayfaya git")
          )
          
        ],
      ),
    );
  }
}