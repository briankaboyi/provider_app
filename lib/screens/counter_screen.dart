import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_application/controllers/counter_screen_controller.dart';
import 'package:provider_application/providers/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final counter =context.read<CounterProvider>();
    final counterProvider = context.watch<CounterProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        leadingWidth: 0,
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(counterProvider.numValue.toString()))
        ],
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          FloatingActionButton(
            onPressed: () {
              counter.increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counter.decrement();
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(onPressed: (){
           counter.reset();
          },
          child: Icon(Icons.restart_alt),)
        ],
      ),
    );
  }
}
