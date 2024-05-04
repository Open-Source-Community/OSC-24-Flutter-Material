import 'package:hive_flutter/hive_flutter.dart';

import '../../models/note_models.dart';

class HiveHelper {
  insertToDatabase(NoteModel note) async {
    var box = Hive.box<NoteModel>("testBox");
    await box.add(note);
  }

  fetchData() {
    var box = Hive.box<NoteModel>("testBox");
    return box.values.toList();
  }
}
