import 'package:basic_99_note_app/presentation/add_edit_note/add_edit_note_screen.dart';
import 'package:basic_99_note_app/presentation/notes/notes_event.dart';
import 'package:basic_99_note_app/presentation/notes/notes_view_model.dart';
import 'package:basic_99_note_app/ui/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/note_item.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NotesViewModel>();
    final state = viewModel.state;
    return Scaffold(
      backgroundColor: darkGrey,
      appBar: AppBar(
        title: const Text('Your Note'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          bool? isSaved = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddEditNoteScreen()));
          if (isSaved != null && isSaved) {
            viewModel.onEvent(const NotesEvent.loadNotes());
          }
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: state.notes
            .map(
              (note) => GestureDetector(
                onTap: () async {
                  bool? isSaved = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddEditNoteScreen(
                                note: note,
                              )));
                  if (isSaved != null && isSaved) {
                    viewModel.onEvent(const NotesEvent.loadNotes());
                  }
                },
                child: NoteItem(
                  note: note,
                  onDeleteTap: () {
                    viewModel.onEvent(NotesEvent.deleteNotes(note));

                    final snackBar = SnackBar(
                      content: Text('노트가 삭제되었습니다'),
                      action: SnackBarAction(
                        label: '취소',
                        onPressed: () {
                          viewModel.onEvent(const NotesEvent.restoreNotes());
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
