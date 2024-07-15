import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'models/note_models.dart';
import 'views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('testBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final themeNotifier = ValueNotifier<ThemeMode>(ThemeMode.dark);
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeNotifier,
      builder: (context, value, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
            ),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Color.fromARGB(255, 125, 18, 11),
          ),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF252525),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.black.withOpacity(0.7),
          ),
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        themeMode: value,
        home: HomeView(),
      ),
    );
  }
}
