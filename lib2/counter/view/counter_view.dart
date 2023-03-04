import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("CounterView build calişti");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),

      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            log("BlocBuilder calişti");
            return Text("Sayimiz şu anda $state");
          },
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            child: const Icon(
              Icons.plus_one
            ),
          ),

          const SizedBox(
            height: 8,
          ),

          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            onPressed: () {
              return context.read<CounterCubit>().decrement();
            },
            child: const Icon(
              Icons.exposure_minus_1_sharp,
            ),
          )
        ],
      ),
    );
  }
}