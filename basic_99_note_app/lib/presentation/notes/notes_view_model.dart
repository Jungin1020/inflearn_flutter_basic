import 'package:basic_99_note_app/domain/repository/note_repository.dart';
import 'package:basic_99_note_app/presentation/notes/notes_event.dart';
import 'package:flutter/material.dart';

import '../../domain/model/note.dart';

class NoteViewModel with ChangeNotifier {
  final NoteRepository repository;

  List<Note> _notes = [];

  List<Note> get notes => List.unmodifiable(_notes);

  Note? _recentlyDeletedNote;
  NoteViewModel(this.repository);

  void onEvent(NotesEvent event) {
    event.when(
      loadNotes: _loadNotes,
      deleteNotes: _deleteNote,
      restoreNotes: _restoreNote,
    );
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await repository.getNotes();
    _notes = notes;
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await repository.deleteNote(note);
    _recentlyDeletedNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await repository.insertNote(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      await _loadNotes();
    }
  }
}
