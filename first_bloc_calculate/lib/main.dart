import 'package:first_bloc_calculate/ui/cubit/main_page_cubit.dart';
import 'package:first_bloc_calculate/ui/views/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => MainPageCubit())],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: MainPage(),
      ),
    );
  }
}
