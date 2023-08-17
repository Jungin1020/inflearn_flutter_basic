import 'package:basic_99_note_app/domain/repository/note_repository.dart';
import 'package:basic_99_note_app/domain/use_case/delete_note_use_case.dart';
import 'package:basic_99_note_app/domain/use_case/get_notes_use_case.dart';
import 'package:basic_99_note_app/domain/use_case/use_cases.dart';
import 'package:basic_99_note_app/presentation/notes/notes_event.dart';
import 'package:basic_99_note_app/presentation/notes/notes_state.dart';
import 'package:flutter/material.dart';

import '../../domain/model/note.dart';
import '../../domain/use_case/add_note_use_case.dart';

class NotesViewModel with ChangeNotifier {
  // final NoteRepository repository;

  final UseCases useCases;

  NotesState _state = const NotesState(notes: []);

  NotesState get state => _state;

  Note? _recentlyDeletedNote;

  NotesViewModel(this.useCases) {
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
    List<Note> notes = await useCases.getNotesUseCase();
    _state = state.copyWith(notes: notes);
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await useCases.deleteNoteUseCase(note);
    _recentlyDeletedNote = note;
    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      await useCases.addNoteUseCase(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      await _loadNotes();
    }
  }
}
