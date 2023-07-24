import 'package:basic_99_note_app/domain/model/note.dart';
import 'package:basic_99_note_app/domain/repository/note_repository.dart';

class AddNoteUseCase {
  final NoteRepository repository;

  AddNoteUseCase(this.repository);

  Future<void> call(Note note) async {
    await repository.insertNote(note);
  }
}
