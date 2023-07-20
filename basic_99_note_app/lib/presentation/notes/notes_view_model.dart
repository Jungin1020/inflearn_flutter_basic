import 'package:basic_99_note_app/domain/repository/note_repository.dart';
import 'package:basic_99_note_app/presentation/notes/notes_event.dart';
import 'package:basic_99_note_app/presentation/notes/notes_state.dart';
import 'package:flutter/material.dart';

import '../../domain/model/note.dart';

class NotesViewModel with ChangeNotifier {
  final NoteRepository repository;

  NotesState _state = const NotesState(notes: []);

  NotesState get state => _state;

  Note? _recentlyDeletedNote;

  NotesViewModel(this.repository) {
    _loadNotes();
  }

  void onEvent(NotesEvent event) {
    // event.when(
    //   loadNotes: _loadNotes,
    //   deleteNotes: _deleteNote,
    //   restoreNotes: _restoreNote,
    // );

    switch (event) {
      case LoadNotes():
        _loadNotes();
      case DeleteNotes():
        _deleteNote(event.note);
      case RestoreNotes():
        _restoreNote();
    }
  }

  Future<void> _loadNotes() async {
    List<Note> notes = await repository.getNotes();
    _state = state.copyWith(notes: notes);
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
