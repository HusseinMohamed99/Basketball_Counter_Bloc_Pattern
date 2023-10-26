import 'package:basketball/cubit/counter_cubit.dart';
import 'package:basketball/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        title: 'Points Counter',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}