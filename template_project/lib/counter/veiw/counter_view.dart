import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/counter/counter.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  /// {@macro counter_view}
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(24),
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(//Обертка для распределения кнопки по краям
                  child: TextButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50), // Закругление краев
                        ),
                        minimumSize: Size(double.infinity/3, double.infinity/3)
                    ),
                    child: Text(""),
                    onPressed: () => context.read<CounterCubit>().increment(),
                  ),
                ),
                BlocBuilder<CounterCubit, int>(
                  builder: (context, state) {
                    return Text(
                      '$state',
                      style: TextStyle(fontSize: 45, color: Colors.black),
                    );
                  },
                ),
                Expanded(//Обертка для распределения кнопки по краям
                  child: TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50), // Закругление краев
                          ),
                          minimumSize: Size(double.infinity/3, double.infinity/3)
                      ),
                      onPressed: () => context.read<CounterCubit>().decrement(),
                      child: Text("")
                  ),
                ),

          ],
        ),
          /*],
        ),*/
      ),


     /* floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterCubit>().increment(),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterCubit>().decrement(),
          ),
        ],
      ),*/
    );
  }
}