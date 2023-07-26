import 'package:basic_99_exchange/data/data_source/exchange_api.dart';
import 'package:basic_99_exchange/data/repository/exchange_repository_impl.dart';
import 'package:basic_99_exchange/presentation/main/main_screen.dart';
import 'package:basic_99_exchange/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(ExchangeRepositoryImpl(ExchangeApi())),
        child: const MainScreen(),
      ),
    );
  }
}
