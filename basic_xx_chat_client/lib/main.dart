import 'package:basic_xx_chat_client/data/repository/chat_repository_impl.dart';
import 'package:basic_xx_chat_client/presentation/main/main_screen.dart';
import 'package:basic_xx_chat_client/presentation/main/main_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainViewModel(ChatRepositoryImpl()),
          child: const MainScreen(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.grey, background: Colors.grey.shade200),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
