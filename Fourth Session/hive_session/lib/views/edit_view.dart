import 'package:flutter/material.dart';
import '../widgets/note_body.dart';
import '../models/note_models.dart';
import '../services/local/hive_helper.dart';
import '../widgets/custom_icon.dart';
import '../widgets/edit_note_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.note}) : super(key: key);

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          CustomIcon(
            icon: Icons.check,
            onPressed: () {
              note.title = title ?? note.title;
              note.note = content ?? note.note;
              note.save();
              NotesBody.notesNotifier.value = HiveHelper().fetchData();
              Navigator.pop(context);
            },
          ),
          const SizedBox(width: 10),
        ],
        title: const Text(
          'Edit Note',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Rubik",
          ),
        ),
      ),
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
