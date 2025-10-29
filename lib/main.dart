import 'package:ecom_blocapp/features/home/bloc/bloc/home_bloc.dart';
import 'package:ecom_blocapp/features/home/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()),
    );
  }
}
