import 'package:flutter/material.dart';
import '../services/local/hive_helper.dart';

import '../models/note_models.dart';
import 'note_item.dart';
import 'no_notes.dart';

class NotesBody extends StatelessWidget {
  static final notesNotifier =
      ValueNotifier<List<NoteModel>>(HiveHelper().fetchData());
  const NotesBody({super.key});

  // List<NoteModel> notes = [];

  // @override
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: notesNotifier,
      builder: (context, value, child) {
        return notesNotifier.value.isEmpty
            ? const NoNotes()
            : ListView.builder(
                padding: const EdgeInsets.only(top: 16),
                itemCount: notesNotifier.value.length,
                itemBuilder: (context, index) {
                  return NoteItem(
                    note: notesNotifier.value[index],
                  );
                },
              );
      },
    );
  }
}
