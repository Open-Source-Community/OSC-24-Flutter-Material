import 'package:flutter/material.dart';
import '../models/note_models.dart';
import '../views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) async {
        if (direction == DismissDirection.endToStart) {
          await note.delete();
        }
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return EditNoteView(
                note: note,
              );
            }),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(note.color),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                note.note,
                style: const TextStyle(
                  fontFamily: "Rubik",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
