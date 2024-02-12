import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/add_bottom_sheet.dart';
import '../widgets/custom_icon.dart';
import '../widgets/note_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Notes",
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Rubik",
          ),
        ),
        actions: [
          //icon of change theme
          CustomIcon(
            icon: MyApp.themeNotifier.value == ThemeMode.dark
                ? Icons.dark_mode
                : Icons.sunny,
            onPressed: () {
              MyApp.themeNotifier.value == ThemeMode.dark
                  ? MyApp.themeNotifier.value = ThemeMode.light
                  : MyApp.themeNotifier.value = ThemeMode.dark;
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const NotesBody(),
    );
  }
}
