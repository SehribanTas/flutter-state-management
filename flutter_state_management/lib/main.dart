import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/riverpod_basics.dart';
import 'package:flutter_state_management/state_notifier/counter_manager.dart';

void main() => runApp(ProviderScope(child: MyApp()));

final titleProvider = Provider<String>(((ref) => 'Riverpod Basics'));
final sayacProvider = StateProvider(((ref) {
  return 0;
}));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Consumer(builder: ((context, ref, child) {
            return Text(ref.watch(titleProvider));

          })),
        ),
        body: Container(
          child: Consumer(builder: (context, ref, child) {
            var sayac= ref.watch(counterStateProvider).counter;
            return Text(sayac.toString());
          },),
        ),
        floatingActionButton: Consumer(builder: ((context, ref, child) {
          return FloatingActionButton(onPressed: (() {
            // ignore: deprecated_member_use
            //NOTE : state provider kullanımı
           // ref.read(sayacProvider.state).state++;
           //statenotifier
             ref.read(counterStateProvider.notifier).increase();
          }));
        })),
      ),
    );
  }
}
