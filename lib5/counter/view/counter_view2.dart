import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../bloc/counter_states.dart';

class CounterView2 extends StatelessWidget {
  const CounterView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: context.read<CounterBloc>().state.kullanicininSectikleri.length,
            itemBuilder: (context, index) {
              return Text(context.read<CounterBloc>().state.kullanicininSectikleri[index]);
            },
          );
        },
      ),
      
    );
  }
}