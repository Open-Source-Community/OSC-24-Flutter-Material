import 'package:hive_flutter/hive_flutter.dart';

part 'note_models.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String note;
  @HiveField(1)
  String title;
  @HiveField(2)
  int color;
  NoteModel({
    required this.note,
    required this.title,
    required this.color,
  });
}
