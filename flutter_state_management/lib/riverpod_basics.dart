import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// riverpod provider & stateProvider
//
final titleProvider = Provider<String>(((ref) => 'Riverpod Basics'));

class RiverpodBasics extends StatefulWidget {
  RiverpodBasics({Key? key}) : super(key: key);

  @override
  State<RiverpodBasics> createState() => _RiverpodBasicsState();
}

class _RiverpodBasicsState extends State<RiverpodBasics> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}